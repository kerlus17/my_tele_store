// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SendNotificationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendNotificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendNotificationEvent()';
}


}

/// @nodoc
class $SendNotificationEventCopyWith<$Res>  {
$SendNotificationEventCopyWith(SendNotificationEvent _, $Res Function(SendNotificationEvent) __);
}


/// Adds pattern-matching-related methods to [SendNotificationEvent].
extension SendNotificationEventPatterns on SendNotificationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( NewSendNotificationsEvent value)?  sendNotifications,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case NewSendNotificationsEvent() when sendNotifications != null:
return sendNotifications(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( NewSendNotificationsEvent value)  sendNotifications,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case NewSendNotificationsEvent():
return sendNotifications(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( NewSendNotificationsEvent value)?  sendNotifications,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case NewSendNotificationsEvent() when sendNotifications != null:
return sendNotifications(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String title,  String body,  int productId,  int indexId)?  sendNotifications,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case NewSendNotificationsEvent() when sendNotifications != null:
return sendNotifications(_that.title,_that.body,_that.productId,_that.indexId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String title,  String body,  int productId,  int indexId)  sendNotifications,}) {final _that = this;
switch (_that) {
case _Started():
return started();case NewSendNotificationsEvent():
return sendNotifications(_that.title,_that.body,_that.productId,_that.indexId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String title,  String body,  int productId,  int indexId)?  sendNotifications,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case NewSendNotificationsEvent() when sendNotifications != null:
return sendNotifications(_that.title,_that.body,_that.productId,_that.indexId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements SendNotificationEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendNotificationEvent.started()';
}


}




/// @nodoc


class NewSendNotificationsEvent implements SendNotificationEvent {
  const NewSendNotificationsEvent({required this.title, required this.body, required this.productId, required this.indexId});
  

 final  String title;
 final  String body;
 final  int productId;
 final  int indexId;

/// Create a copy of SendNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewSendNotificationsEventCopyWith<NewSendNotificationsEvent> get copyWith => _$NewSendNotificationsEventCopyWithImpl<NewSendNotificationsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewSendNotificationsEvent&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.indexId, indexId) || other.indexId == indexId));
}


@override
int get hashCode => Object.hash(runtimeType,title,body,productId,indexId);

@override
String toString() {
  return 'SendNotificationEvent.sendNotifications(title: $title, body: $body, productId: $productId, indexId: $indexId)';
}


}

/// @nodoc
abstract mixin class $NewSendNotificationsEventCopyWith<$Res> implements $SendNotificationEventCopyWith<$Res> {
  factory $NewSendNotificationsEventCopyWith(NewSendNotificationsEvent value, $Res Function(NewSendNotificationsEvent) _then) = _$NewSendNotificationsEventCopyWithImpl;
@useResult
$Res call({
 String title, String body, int productId, int indexId
});




}
/// @nodoc
class _$NewSendNotificationsEventCopyWithImpl<$Res>
    implements $NewSendNotificationsEventCopyWith<$Res> {
  _$NewSendNotificationsEventCopyWithImpl(this._self, this._then);

  final NewSendNotificationsEvent _self;
  final $Res Function(NewSendNotificationsEvent) _then;

/// Create a copy of SendNotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? body = null,Object? productId = null,Object? indexId = null,}) {
  return _then(NewSendNotificationsEvent(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,indexId: null == indexId ? _self.indexId : indexId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$SendNotificationState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendNotificationState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendNotificationState()';
}


}

/// @nodoc
class $SendNotificationStateCopyWith<$Res>  {
$SendNotificationStateCopyWith(SendNotificationState _, $Res Function(SendNotificationState) __);
}


/// Adds pattern-matching-related methods to [SendNotificationState].
extension SendNotificationStatePatterns on SendNotificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( LoadingState value)?  loading,TResult Function( SuccessState value)?  success,TResult Function( ErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingState() when loading != null:
return loading(_that);case SuccessState() when success != null:
return success(_that);case ErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( LoadingState value)  loading,required TResult Function( SuccessState value)  success,required TResult Function( ErrorState value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LoadingState():
return loading(_that);case SuccessState():
return success(_that);case ErrorState():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( LoadingState value)?  loading,TResult? Function( SuccessState value)?  success,TResult? Function( ErrorState value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingState() when loading != null:
return loading(_that);case SuccessState() when success != null:
return success(_that);case ErrorState() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( int indexId)?  loading,TResult Function()?  success,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingState() when loading != null:
return loading(_that.indexId);case SuccessState() when success != null:
return success();case ErrorState() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( int indexId)  loading,required TResult Function()  success,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case LoadingState():
return loading(_that.indexId);case SuccessState():
return success();case ErrorState():
return error(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( int indexId)?  loading,TResult? Function()?  success,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingState() when loading != null:
return loading(_that.indexId);case SuccessState() when success != null:
return success();case ErrorState() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SendNotificationState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendNotificationState.initial()';
}


}




/// @nodoc


class LoadingState implements SendNotificationState {
  const LoadingState({required this.indexId});
  

 final  int indexId;

/// Create a copy of SendNotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingStateCopyWith<LoadingState> get copyWith => _$LoadingStateCopyWithImpl<LoadingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingState&&(identical(other.indexId, indexId) || other.indexId == indexId));
}


@override
int get hashCode => Object.hash(runtimeType,indexId);

@override
String toString() {
  return 'SendNotificationState.loading(indexId: $indexId)';
}


}

/// @nodoc
abstract mixin class $LoadingStateCopyWith<$Res> implements $SendNotificationStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(LoadingState value, $Res Function(LoadingState) _then) = _$LoadingStateCopyWithImpl;
@useResult
$Res call({
 int indexId
});




}
/// @nodoc
class _$LoadingStateCopyWithImpl<$Res>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(this._self, this._then);

  final LoadingState _self;
  final $Res Function(LoadingState) _then;

/// Create a copy of SendNotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? indexId = null,}) {
  return _then(LoadingState(
indexId: null == indexId ? _self.indexId : indexId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SuccessState implements SendNotificationState {
  const SuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendNotificationState.success()';
}


}




/// @nodoc


class ErrorState implements SendNotificationState {
  const ErrorState({required this.error});
  

 final  String error;

/// Create a copy of SendNotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorStateCopyWith<ErrorState> get copyWith => _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErrorState&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SendNotificationState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorStateCopyWith<$Res> implements $SendNotificationStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(ErrorState value, $Res Function(ErrorState) _then) = _$ErrorStateCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorStateCopyWithImpl<$Res>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(this._self, this._then);

  final ErrorState _self;
  final $Res Function(ErrorState) _then;

/// Create a copy of SendNotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorState(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
