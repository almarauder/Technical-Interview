// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UsersEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsersEvent()';
}


}

/// @nodoc
class $UsersEventCopyWith<$Res>  {
$UsersEventCopyWith(UsersEvent _, $Res Function(UsersEvent) __);
}


/// Adds pattern-matching-related methods to [UsersEvent].
extension UsersEventPatterns on UsersEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadUsers value)?  loadUsers,TResult Function( RefreshUsers value)?  refreshUsers,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadUsers() when loadUsers != null:
return loadUsers(_that);case RefreshUsers() when refreshUsers != null:
return refreshUsers(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadUsers value)  loadUsers,required TResult Function( RefreshUsers value)  refreshUsers,}){
final _that = this;
switch (_that) {
case LoadUsers():
return loadUsers(_that);case RefreshUsers():
return refreshUsers(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadUsers value)?  loadUsers,TResult? Function( RefreshUsers value)?  refreshUsers,}){
final _that = this;
switch (_that) {
case LoadUsers() when loadUsers != null:
return loadUsers(_that);case RefreshUsers() when refreshUsers != null:
return refreshUsers(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadUsers,TResult Function()?  refreshUsers,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadUsers() when loadUsers != null:
return loadUsers();case RefreshUsers() when refreshUsers != null:
return refreshUsers();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadUsers,required TResult Function()  refreshUsers,}) {final _that = this;
switch (_that) {
case LoadUsers():
return loadUsers();case RefreshUsers():
return refreshUsers();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadUsers,TResult? Function()?  refreshUsers,}) {final _that = this;
switch (_that) {
case LoadUsers() when loadUsers != null:
return loadUsers();case RefreshUsers() when refreshUsers != null:
return refreshUsers();case _:
  return null;

}
}

}

/// @nodoc


class LoadUsers implements UsersEvent {
  const LoadUsers();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadUsers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsersEvent.loadUsers()';
}


}




/// @nodoc


class RefreshUsers implements UsersEvent {
  const RefreshUsers();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshUsers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsersEvent.refreshUsers()';
}


}




// dart format on
