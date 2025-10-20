// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodoState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoState()';
}


}

/// @nodoc
class $TodoStateCopyWith<$Res>  {
$TodoStateCopyWith(TodoState _, $Res Function(TodoState) __);
}


/// Adds pattern-matching-related methods to [TodoState].
extension TodoStatePatterns on TodoState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TodoInitial value)?  todoInitial,TResult Function( TodoInitializing value)?  todoInitializing,TResult Function( TodoInitialized value)?  todoInitialized,TResult Function( TodoError value)?  todoError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TodoInitial() when todoInitial != null:
return todoInitial(_that);case TodoInitializing() when todoInitializing != null:
return todoInitializing(_that);case TodoInitialized() when todoInitialized != null:
return todoInitialized(_that);case TodoError() when todoError != null:
return todoError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TodoInitial value)  todoInitial,required TResult Function( TodoInitializing value)  todoInitializing,required TResult Function( TodoInitialized value)  todoInitialized,required TResult Function( TodoError value)  todoError,}){
final _that = this;
switch (_that) {
case TodoInitial():
return todoInitial(_that);case TodoInitializing():
return todoInitializing(_that);case TodoInitialized():
return todoInitialized(_that);case TodoError():
return todoError(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TodoInitial value)?  todoInitial,TResult? Function( TodoInitializing value)?  todoInitializing,TResult? Function( TodoInitialized value)?  todoInitialized,TResult? Function( TodoError value)?  todoError,}){
final _that = this;
switch (_that) {
case TodoInitial() when todoInitial != null:
return todoInitial(_that);case TodoInitializing() when todoInitializing != null:
return todoInitializing(_that);case TodoInitialized() when todoInitialized != null:
return todoInitialized(_that);case TodoError() when todoError != null:
return todoError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  todoInitial,TResult Function()?  todoInitializing,TResult Function( List<Todo> todos)?  todoInitialized,TResult Function( String message,  List<Todo>? todos)?  todoError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TodoInitial() when todoInitial != null:
return todoInitial();case TodoInitializing() when todoInitializing != null:
return todoInitializing();case TodoInitialized() when todoInitialized != null:
return todoInitialized(_that.todos);case TodoError() when todoError != null:
return todoError(_that.message,_that.todos);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  todoInitial,required TResult Function()  todoInitializing,required TResult Function( List<Todo> todos)  todoInitialized,required TResult Function( String message,  List<Todo>? todos)  todoError,}) {final _that = this;
switch (_that) {
case TodoInitial():
return todoInitial();case TodoInitializing():
return todoInitializing();case TodoInitialized():
return todoInitialized(_that.todos);case TodoError():
return todoError(_that.message,_that.todos);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  todoInitial,TResult? Function()?  todoInitializing,TResult? Function( List<Todo> todos)?  todoInitialized,TResult? Function( String message,  List<Todo>? todos)?  todoError,}) {final _that = this;
switch (_that) {
case TodoInitial() when todoInitial != null:
return todoInitial();case TodoInitializing() when todoInitializing != null:
return todoInitializing();case TodoInitialized() when todoInitialized != null:
return todoInitialized(_that.todos);case TodoError() when todoError != null:
return todoError(_that.message,_that.todos);case _:
  return null;

}
}

}

/// @nodoc


class TodoInitial implements TodoState {
  const TodoInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoState.todoInitial()';
}


}




/// @nodoc


class TodoInitializing implements TodoState {
  const TodoInitializing();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoInitializing);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TodoState.todoInitializing()';
}


}




/// @nodoc


class TodoInitialized implements TodoState {
  const TodoInitialized({required final  List<Todo> todos}): _todos = todos;
  

 final  List<Todo> _todos;
 List<Todo> get todos {
  if (_todos is EqualUnmodifiableListView) return _todos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_todos);
}


/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoInitializedCopyWith<TodoInitialized> get copyWith => _$TodoInitializedCopyWithImpl<TodoInitialized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoInitialized&&const DeepCollectionEquality().equals(other._todos, _todos));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_todos));

@override
String toString() {
  return 'TodoState.todoInitialized(todos: $todos)';
}


}

/// @nodoc
abstract mixin class $TodoInitializedCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory $TodoInitializedCopyWith(TodoInitialized value, $Res Function(TodoInitialized) _then) = _$TodoInitializedCopyWithImpl;
@useResult
$Res call({
 List<Todo> todos
});




}
/// @nodoc
class _$TodoInitializedCopyWithImpl<$Res>
    implements $TodoInitializedCopyWith<$Res> {
  _$TodoInitializedCopyWithImpl(this._self, this._then);

  final TodoInitialized _self;
  final $Res Function(TodoInitialized) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? todos = null,}) {
  return _then(TodoInitialized(
todos: null == todos ? _self._todos : todos // ignore: cast_nullable_to_non_nullable
as List<Todo>,
  ));
}


}

/// @nodoc


class TodoError implements TodoState {
  const TodoError({required this.message, final  List<Todo>? todos}): _todos = todos;
  

 final  String message;
// Optional: Hier könnten wir die letzte bekannte, funktionierende Liste übergeben.
 final  List<Todo>? _todos;
// Optional: Hier könnten wir die letzte bekannte, funktionierende Liste übergeben.
 List<Todo>? get todos {
  final value = _todos;
  if (value == null) return null;
  if (_todos is EqualUnmodifiableListView) return _todos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodoErrorCopyWith<TodoError> get copyWith => _$TodoErrorCopyWithImpl<TodoError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodoError&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._todos, _todos));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_todos));

@override
String toString() {
  return 'TodoState.todoError(message: $message, todos: $todos)';
}


}

/// @nodoc
abstract mixin class $TodoErrorCopyWith<$Res> implements $TodoStateCopyWith<$Res> {
  factory $TodoErrorCopyWith(TodoError value, $Res Function(TodoError) _then) = _$TodoErrorCopyWithImpl;
@useResult
$Res call({
 String message, List<Todo>? todos
});




}
/// @nodoc
class _$TodoErrorCopyWithImpl<$Res>
    implements $TodoErrorCopyWith<$Res> {
  _$TodoErrorCopyWithImpl(this._self, this._then);

  final TodoError _self;
  final $Res Function(TodoError) _then;

/// Create a copy of TodoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? todos = freezed,}) {
  return _then(TodoError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,todos: freezed == todos ? _self._todos : todos // ignore: cast_nullable_to_non_nullable
as List<Todo>?,
  ));
}


}

// dart format on
