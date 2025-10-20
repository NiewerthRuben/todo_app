// lib/screens/todo/widgets/add_todo_dialog.dart

import 'package:flutter/material.dart';
import '../../../localization/generated/l10n.dart';
import '../cubit/todo_cubit.dart';

class AddTodoDialog extends StatelessWidget {
  final TodoCubit todoCubit;

  const AddTodoDialog({required this.todoCubit, super.key});

  static Future<void> show(BuildContext context, TodoCubit cubit) {
    return showDialog(
      context: context,
      // Das Widget selbst wird jetzt mit dem Cubit-Objekt instanziiert
      builder: (ctx) => AddTodoDialog(todoCubit: cubit),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = Localize.of(context);
    final controller = TextEditingController();

    return AlertDialog(
      title: Text(l10n.newTodoTitle),
      content: TextField(
        controller: controller,
        autofocus: true,
        decoration: InputDecoration(hintText: l10n.hintTodoTitle),
        onSubmitted: (value) {
          if (value.isNotEmpty) {
            todoCubit.addTodo(value);
            Navigator.of(context).pop();
          }
        },
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(l10n.buttonCancel),
        ),
        ElevatedButton(
          onPressed: () {
            if (controller.text.isNotEmpty) {
              todoCubit.addTodo(controller.text);
              Navigator.of(context).pop();
            }
          },
          child: Text(l10n.buttonAdd),
        ),
      ],
    );
  }
}
