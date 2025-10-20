part of 'todo_cubit.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.todoInitial() = TodoInitial;

  const factory TodoState.todoInitializing() = TodoInitializing;

  const factory TodoState.todoInitialized({required List<Todo> todos}) =
      TodoInitialized;

  const factory TodoState.todoError({
    required String message,
    List<Todo>? todos,
  }) = TodoError;
}
