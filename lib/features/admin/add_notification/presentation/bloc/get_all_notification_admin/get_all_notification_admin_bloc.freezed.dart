// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_notification_admin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetAllNotificationAdminEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllNotificationAdminEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllNotificationAdminEvent()';
}


}

/// @nodoc
class $GetAllNotificationAdminEventCopyWith<$Res>  {
$GetAllNotificationAdminEventCopyWith(GetAllNotificationAdminEvent _, $Res Function(GetAllNotificationAdminEvent) __);
}


/// Adds pattern-matching-related methods to [GetAllNotificationAdminEvent].
extension GetAllNotificationAdminEventPatterns on GetAllNotificationAdminEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( FetchNotificationEvent value)?  fetchAll,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case FetchNotificationEvent() when fetchAll != null:
return fetchAll(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( FetchNotificationEvent value)  fetchAll,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case FetchNotificationEvent():
return fetchAll(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( FetchNotificationEvent value)?  fetchAll,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case FetchNotificationEvent() when fetchAll != null:
return fetchAll(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( bool loading)?  fetchAll,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case FetchNotificationEvent() when fetchAll != null:
return fetchAll(_that.loading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( bool loading)  fetchAll,}) {final _that = this;
switch (_that) {
case _Started():
return started();case FetchNotificationEvent():
return fetchAll(_that.loading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( bool loading)?  fetchAll,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case FetchNotificationEvent() when fetchAll != null:
return fetchAll(_that.loading);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements GetAllNotificationAdminEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllNotificationAdminEvent.started()';
}


}




/// @nodoc


class FetchNotificationEvent implements GetAllNotificationAdminEvent {
  const FetchNotificationEvent({required this.loading});
  

 final  bool loading;

/// Create a copy of GetAllNotificationAdminEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchNotificationEventCopyWith<FetchNotificationEvent> get copyWith => _$FetchNotificationEventCopyWithImpl<FetchNotificationEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchNotificationEvent&&(identical(other.loading, loading) || other.loading == loading));
}


@override
int get hashCode => Object.hash(runtimeType,loading);

@override
String toString() {
  return 'GetAllNotificationAdminEvent.fetchAll(loading: $loading)';
}


}

/// @nodoc
abstract mixin class $FetchNotificationEventCopyWith<$Res> implements $GetAllNotificationAdminEventCopyWith<$Res> {
  factory $FetchNotificationEventCopyWith(FetchNotificationEvent value, $Res Function(FetchNotificationEvent) _then) = _$FetchNotificationEventCopyWithImpl;
@useResult
$Res call({
 bool loading
});




}
/// @nodoc
class _$FetchNotificationEventCopyWithImpl<$Res>
    implements $FetchNotificationEventCopyWith<$Res> {
  _$FetchNotificationEventCopyWithImpl(this._self, this._then);

  final FetchNotificationEvent _self;
  final $Res Function(FetchNotificationEvent) _then;

/// Create a copy of GetAllNotificationAdminEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? loading = null,}) {
  return _then(FetchNotificationEvent(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$GetAllNotificationAdminState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllNotificationAdminState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllNotificationAdminState()';
}


}

/// @nodoc
class $GetAllNotificationAdminStateCopyWith<$Res>  {
$GetAllNotificationAdminStateCopyWith(GetAllNotificationAdminState _, $Res Function(GetAllNotificationAdminState) __);
}


/// Adds pattern-matching-related methods to [GetAllNotificationAdminState].
extension GetAllNotificationAdminStatePatterns on GetAllNotificationAdminState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EmptyState value)?  empty,TResult Function( ErrorState value)?  error,TResult Function( SuccessState value)?  success,TResult Function( LoadingState value)?  loading,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EmptyState() when empty != null:
return empty(_that);case ErrorState() when error != null:
return error(_that);case SuccessState() when success != null:
return success(_that);case LoadingState() when loading != null:
return loading(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EmptyState value)  empty,required TResult Function( ErrorState value)  error,required TResult Function( SuccessState value)  success,required TResult Function( LoadingState value)  loading,}){
final _that = this;
switch (_that) {
case EmptyState():
return empty(_that);case ErrorState():
return error(_that);case SuccessState():
return success(_that);case LoadingState():
return loading(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EmptyState value)?  empty,TResult? Function( ErrorState value)?  error,TResult? Function( SuccessState value)?  success,TResult? Function( LoadingState value)?  loading,}){
final _that = this;
switch (_that) {
case EmptyState() when empty != null:
return empty(_that);case ErrorState() when error != null:
return error(_that);case SuccessState() when success != null:
return success(_that);case LoadingState() when loading != null:
return loading(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  empty,TResult Function( String message)?  error,TResult Function( List<AddNotificationModel> notifications)?  success,TResult Function()?  loading,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EmptyState() when empty != null:
return empty();case ErrorState() when error != null:
return error(_that.message);case SuccessState() when success != null:
return success(_that.notifications);case LoadingState() when loading != null:
return loading();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  empty,required TResult Function( String message)  error,required TResult Function( List<AddNotificationModel> notifications)  success,required TResult Function()  loading,}) {final _that = this;
switch (_that) {
case EmptyState():
return empty();case ErrorState():
return error(_that.message);case SuccessState():
return success(_that.notifications);case LoadingState():
return loading();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  empty,TResult? Function( String message)?  error,TResult? Function( List<AddNotificationModel> notifications)?  success,TResult? Function()?  loading,}) {final _that = this;
switch (_that) {
case EmptyState() when empty != null:
return empty();case ErrorState() when error != null:
return error(_that.message);case SuccessState() when success != null:
return success(_that.notifications);case LoadingState() when loading != null:
return loading();case _:
  return null;

}
}

}

/// @nodoc


class EmptyState implements GetAllNotificationAdminState {
  const EmptyState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmptyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllNotificationAdminState.empty()';
}


}




/// @nodoc


class ErrorState implements GetAllNotificationAdminState {
  const ErrorState({required this.message});
  

 final  String message;

/// Create a copy of GetAllNotificationAdminState
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
  return 'GetAllNotificationAdminState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ErrorStateCopyWith<$Res> implements $GetAllNotificationAdminStateCopyWith<$Res> {
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

/// Create a copy of GetAllNotificationAdminState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ErrorState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SuccessState implements GetAllNotificationAdminState {
  const SuccessState({required   List<AddNotificationModel> notifications}): _notifications = notifications;
  

 final  List<AddNotificationModel> _notifications;
 List<AddNotificationModel> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}


/// Create a copy of GetAllNotificationAdminState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessStateCopyWith<SuccessState> get copyWith => _$SuccessStateCopyWithImpl<SuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessState&&const DeepCollectionEquality().equals(other._notifications, _notifications));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_notifications));

@override
String toString() {
  return 'GetAllNotificationAdminState.success(notifications: $notifications)';
}


}

/// @nodoc
abstract mixin class $SuccessStateCopyWith<$Res> implements $GetAllNotificationAdminStateCopyWith<$Res> {
  factory $SuccessStateCopyWith(SuccessState value, $Res Function(SuccessState) _then) = _$SuccessStateCopyWithImpl;
@useResult
$Res call({
 List<AddNotificationModel> notifications
});




}
/// @nodoc
class _$SuccessStateCopyWithImpl<$Res>
    implements $SuccessStateCopyWith<$Res> {
  _$SuccessStateCopyWithImpl(this._self, this._then);

  final SuccessState _self;
  final $Res Function(SuccessState) _then;

/// Create a copy of GetAllNotificationAdminState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notifications = null,}) {
  return _then(SuccessState(
notifications: null == notifications ? _self._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<AddNotificationModel>,
  ));
}


}

/// @nodoc


class LoadingState implements GetAllNotificationAdminState {
  const LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllNotificationAdminState.loading()';
}


}




// dart format on
