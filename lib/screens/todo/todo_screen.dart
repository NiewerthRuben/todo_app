import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/screens/todo/widgets/todo_item.dart';
import 'package:todo_app/screens/todo/widgets/add_todo_dialog.dart'; // NEUER IMPORT
import '../../localization/generated/l10n.dart';
import 'cubit/todo_cubit.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(),
      child: Builder(
        builder: (context) {
          final todoCubit = context.read<TodoCubit>();
          return Scaffold(
            appBar: AppBar(title: Text(Localize.of(context).appTitle)),

            body: BlocBuilder<TodoCubit, TodoState>(
              builder: (context, state) {
                final l10nBody = Localize.of(context);

                if (state is TodoInitial) {
                  return Center(
                    child: Text(Localize.of(context).startingAppText),
                  );
                }

                if (state is TodoInitializing) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state is TodoError) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${Localize.of(context).anErrorOccured} ${state.message}',
                          style: const TextStyle(color: Colors.red),
                        ),
                        if (state.todos != null && state.todos!.isNotEmpty)
                          const Text('Anzeige der letzten bekannten Daten.'),
                      ],
                    ),
                  );
                }

                if (state is TodoInitialized) {
                  if (state.todos.isEmpty) {
                    return Center(child: Text(l10nBody.emptyListMessage));
                  }

                  return ListView.builder(
                    itemCount: state.todos.length,
                    itemBuilder: (context, index) {
                      final todo = state.todos[index];
                      return TodoItem(key: ValueKey(todo.id), todo: todo);
                    },
                  );
                }
                return Center(child: Text('Unbekannter Zustand'));
              },
            ),

            floatingActionButton: FloatingActionButton(
              tooltip: Localize.of(context).addTodoButton,
              onPressed: () => AddTodoDialog.show(context, todoCubit),
              child: const Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }
}
