// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddNotificationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNotificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddNotificationEvent()';
}


}

/// @nodoc
class $AddNotificationEventCopyWith<$Res>  {
$AddNotificationEventCopyWith(AddNotificationEvent _, $Res Function(AddNotificationEvent) __);
}


/// Adds pattern-matching-related methods to [AddNotificationEvent].
extension AddNotificationEventPatterns on AddNotificationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( AddNewNotificationEvent value)?  addNewNotification,TResult Function( DeleteNNotificationEvent value)?  deleteNewNotification,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case AddNewNotificationEvent() when addNewNotification != null:
return addNewNotification(_that);case DeleteNNotificationEvent() when deleteNewNotification != null:
return deleteNewNotification(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( AddNewNotificationEvent value)  addNewNotification,required TResult Function( DeleteNNotificationEvent value)  deleteNewNotification,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case AddNewNotificationEvent():
return addNewNotification(_that);case DeleteNNotificationEvent():
return deleteNewNotification(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( AddNewNotificationEvent value)?  addNewNotification,TResult? Function( DeleteNNotificationEvent value)?  deleteNewNotification,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case AddNewNotificationEvent() when addNewNotification != null:
return addNewNotification(_that);case DeleteNNotificationEvent() when deleteNewNotification != null:
return deleteNewNotification(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( AddNotificationModel notification)?  addNewNotification,TResult Function( AddNotificationModel notification)?  deleteNewNotification,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case AddNewNotificationEvent() when addNewNotification != null:
return addNewNotification(_that.notification);case DeleteNNotificationEvent() when deleteNewNotification != null:
return deleteNewNotification(_that.notification);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( AddNotificationModel notification)  addNewNotification,required TResult Function( AddNotificationModel notification)  deleteNewNotification,}) {final _that = this;
switch (_that) {
case _Started():
return started();case AddNewNotificationEvent():
return addNewNotification(_that.notification);case DeleteNNotificationEvent():
return deleteNewNotification(_that.notification);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( AddNotificationModel notification)?  addNewNotification,TResult? Function( AddNotificationModel notification)?  deleteNewNotification,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case AddNewNotificationEvent() when addNewNotification != null:
return addNewNotification(_that.notification);case DeleteNNotificationEvent() when deleteNewNotification != null:
return deleteNewNotification(_that.notification);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AddNotificationEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddNotificationEvent.started()';
}


}




/// @nodoc


class AddNewNotificationEvent implements AddNotificationEvent {
  const AddNewNotificationEvent({required this.notification});
  

 final  AddNotificationModel notification;

/// Create a copy of AddNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNewNotificationEventCopyWith<AddNewNotificationEvent> get copyWith => _$AddNewNotificationEventCopyWithImpl<AddNewNotificationEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNewNotificationEvent&&(identical(other.notification, notification) || other.notification == notification));
}


@override
int get hashCode => Object.hash(runtimeType,notification);

@override
String toString() {
  return 'AddNotificationEvent.addNewNotification(notification: $notification)';
}


}

/// @nodoc
abstract mixin class $AddNewNotificationEventCopyWith<$Res> implements $AddNotificationEventCopyWith<$Res> {
  factory $AddNewNotificationEventCopyWith(AddNewNotificationEvent value, $Res Function(AddNewNotificationEvent) _then) = _$AddNewNotificationEventCopyWithImpl;
@useResult
$Res call({
 AddNotificationModel notification
});




}
/// @nodoc
class _$AddNewNotificationEventCopyWithImpl<$Res>
    implements $AddNewNotificationEventCopyWith<$Res> {
  _$AddNewNotificationEventCopyWithImpl(this._self, this._then);

  final AddNewNotificationEvent _self;
  final $Res Function(AddNewNotificationEvent) _then;

/// Create a copy of AddNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notification = null,}) {
  return _then(AddNewNotificationEvent(
notification: null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as AddNotificationModel,
  ));
}


}

/// @nodoc


class DeleteNNotificationEvent implements AddNotificationEvent {
  const DeleteNNotificationEvent({required this.notification});
  

 final  AddNotificationModel notification;

/// Create a copy of AddNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteNNotificationEventCopyWith<DeleteNNotificationEvent> get copyWith => _$DeleteNNotificationEventCopyWithImpl<DeleteNNotificationEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteNNotificationEvent&&(identical(other.notification, notification) || other.notification == notification));
}


@override
int get hashCode => Object.hash(runtimeType,notification);

@override
String toString() {
  return 'AddNotificationEvent.deleteNewNotification(notification: $notification)';
}


}

/// @nodoc
abstract mixin class $DeleteNNotificationEventCopyWith<$Res> implements $AddNotificationEventCopyWith<$Res> {
  factory $DeleteNNotificationEventCopyWith(DeleteNNotificationEvent value, $Res Function(DeleteNNotificationEvent) _then) = _$DeleteNNotificationEventCopyWithImpl;
@useResult
$Res call({
 AddNotificationModel notification
});




}
/// @nodoc
class _$DeleteNNotificationEventCopyWithImpl<$Res>
    implements $DeleteNNotificationEventCopyWith<$Res> {
  _$DeleteNNotificationEventCopyWithImpl(this._self, this._then);

  final DeleteNNotificationEvent _self;
  final $Res Function(DeleteNNotificationEvent) _then;

/// Create a copy of AddNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notification = null,}) {
  return _then(DeleteNNotificationEvent(
notification: null == notification ? _self.notification : notification // ignore: cast_nullable_to_non_nullable
as AddNotificationModel,
  ));
}


}

/// @nodoc
mixin _$AddNotificationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNotificationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddNotificationState()';
}


}

/// @nodoc
class $AddNotificationStateCopyWith<$Res>  {
$AddNotificationStateCopyWith(AddNotificationState _, $Res Function(AddNotificationState) __);
}


/// Adds pattern-matching-related methods to [AddNotificationState].
extension AddNotificationStatePatterns on AddNotificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( ErrorState value)?  error,TResult Function( LoadingState value)?  loading,TResult Function( SuccessState value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ErrorState() when error != null:
return error(_that);case LoadingState() when loading != null:
return loading(_that);case SuccessState() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( ErrorState value)  error,required TResult Function( LoadingState value)  loading,required TResult Function( SuccessState value)  success,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ErrorState():
return error(_that);case LoadingState():
return loading(_that);case SuccessState():
return success(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( ErrorState value)?  error,TResult? Function( LoadingState value)?  loading,TResult? Function( SuccessState value)?  success,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ErrorState() when error != null:
return error(_that);case LoadingState() when loading != null:
return loading(_that);case SuccessState() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String message)?  error,TResult Function()?  loading,TResult Function()?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ErrorState() when error != null:
return error(_that.message);case LoadingState() when loading != null:
return loading();case SuccessState() when success != null:
return success();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String message)  error,required TResult Function()  loading,required TResult Function()  success,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ErrorState():
return error(_that.message);case LoadingState():
return loading();case SuccessState():
return success();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String message)?  error,TResult? Function()?  loading,TResult? Function()?  success,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ErrorState() when error != null:
return error(_that.message);case LoadingState() when loading != null:
return loading();case SuccessState() when success != null:
return success();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AddNotificationState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddNotificationState.initial()';
}


}




/// @nodoc


class ErrorState implements AddNotificationState {
  const ErrorState({required this.message});
  

 final  String message;

/// Create a copy of AddNotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorStateCopyWith<ErrorState> get copyWith => _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AddNotificationState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorStateCopyWith<$Res> implements $AddNotificationStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(ErrorState value, $Res Function(ErrorState) _then) = _$ErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ErrorStateCopyWithImpl<$Res>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(this._self, this._then);

  final ErrorState _self;
  final $Res Function(ErrorState) _then;

/// Create a copy of AddNotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadingState implements AddNotificationState {
  const LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddNotificationState.loading()';
}


}




/// @nodoc


class SuccessState implements AddNotificationState {
  const SuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddNotificationState.success()';
}


}




// dart format on
