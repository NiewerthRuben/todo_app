import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../models/todo.dart';

part 'todo_state.dart';
part 'todo_cubit.freezed.dart';

const _uuid = Uuid();
const _todoStorageKey = 'my_todo_list';

class TodoCubit extends Cubit<TodoState> {

  TodoCubit() : super(const TodoState.todoInitial()) {
    loadTodos();
  }

  Future<void> loadTodos() async {
    try {
      emit(const TodoState.todoInitializing());

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? todosJsonString = prefs.getString(_todoStorageKey);

      List<Todo> loadedTodos = [];
      if (todosJsonString != null) {
        final List<dynamic> jsonList = json.decode(todosJsonString) as List;
        loadedTodos = jsonList.map((json) => Todo.fromJson(json as Map<String, dynamic>)).toList();
      }

      emit(TodoState.todoInitialized(todos: loadedTodos));

    } catch (e) {
      emit(TodoState.todoError(
        message: 'Fehler beim Laden der ToDos: ${e.toString()}',
        todos: [], // Starte mit leerer Liste im Fehlerfall
      ));
    }
  }

  Future<void> _saveTodos(List<Todo> todosToSave) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      final List<Map<String, dynamic>> jsonList =
      todosToSave.map((todo) => todo.toJson()).toList();

      final String jsonString = json.encode(jsonList);

      await prefs.setString(_todoStorageKey, jsonString);
    } catch (e) {
      print('Speicherfehler: $e');
    }
  }

  void addTodo(String title) {
    state.maybeWhen(
        todoInitialized: (todos) {

          final newTodo = Todo(
            id: _uuid.v4(),
            title: title,
            isCompleted: false,
          );

          final updatedTodos = List<Todo>.from(todos)..add(newTodo);

          emit(TodoState.todoInitialized(todos: updatedTodos));
          _saveTodos(updatedTodos);
        },
        orElse: () {}
    );
  }

  void toggleTodoStatus(String id) {
    state.maybeWhen(
        todoInitialized: (todos) {

          final updatedTodos = List<Todo>.from(todos);
          final index = updatedTodos.indexWhere((todo) => todo.id == id);

          if (index != -1) {
            final toggledTodo = updatedTodos[index].copyWith(
              isCompleted: !updatedTodos[index].isCompleted,
            );

            updatedTodos[index] = toggledTodo;

            emit(TodoState.todoInitialized(todos: updatedTodos));
            _saveTodos(updatedTodos);
          }
        },
        orElse: () {}
    );
  }
  void deleteTodo(String id) {
    state.maybeWhen(
        todoInitialized: (todos) {

          final updatedTodos = todos.where((todo) => todo.id != id).toList();

          emit(TodoState.todoInitialized(todos: updatedTodos));
          _saveTodos(updatedTodos);
        },
        orElse: () {}
    );
  }
}