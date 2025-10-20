import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/todo.dart';
import '../cubit/todo_cubit.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;

  const TodoItem({required this.todo, super.key});

  @override
  Widget build(BuildContext context) {
    final todoCubit = context.read<TodoCubit>();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: todo.isCompleted ? Colors.green.shade50 : Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
          ),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        child: Row(
          children: [
            // 1. Checkbox
            Checkbox(
              value: todo.isCompleted,
              onChanged: (value) => todoCubit.toggleTodoStatus(todo.id),
              activeColor: Colors.green,
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  todo.title,
                  style: TextStyle(
                    fontSize: 16.0,
                    decoration: todo.isCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    color: todo.isCompleted
                        ? Colors.grey.shade600
                        : Colors.black87,
                  ),
                ),
              ),
            ),

            // 3. Löschen-Button
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.redAccent, size: 20),
              onPressed: () => todoCubit.deleteTodo(todo.id),
            ),
          ],
        ),
      ),
    );
  }
}
