// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateCategoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCategoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateCategoryEvent()';
}


}

/// @nodoc
class $UpdateCategoryEventCopyWith<$Res>  {
$UpdateCategoryEventCopyWith(UpdateCategoryEvent _, $Res Function(UpdateCategoryEvent) __);
}


/// Adds pattern-matching-related methods to [UpdateCategoryEvent].
extension UpdateCategoryEventPatterns on UpdateCategoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( UpdateOldCategoryEvent value)?  updateOldCategory,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case UpdateOldCategoryEvent() when updateOldCategory != null:
return updateOldCategory(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( UpdateOldCategoryEvent value)  updateOldCategory,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case UpdateOldCategoryEvent():
return updateOldCategory(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( UpdateOldCategoryEvent value)?  updateOldCategory,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case UpdateOldCategoryEvent() when updateOldCategory != null:
return updateOldCategory(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( UpdateCategoryRequestBody body)?  updateOldCategory,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case UpdateOldCategoryEvent() when updateOldCategory != null:
return updateOldCategory(_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( UpdateCategoryRequestBody body)  updateOldCategory,}) {final _that = this;
switch (_that) {
case _Started():
return started();case UpdateOldCategoryEvent():
return updateOldCategory(_that.body);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( UpdateCategoryRequestBody body)?  updateOldCategory,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case UpdateOldCategoryEvent() when updateOldCategory != null:
return updateOldCategory(_that.body);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements UpdateCategoryEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateCategoryEvent.started()';
}


}




/// @nodoc


class UpdateOldCategoryEvent implements UpdateCategoryEvent {
  const UpdateOldCategoryEvent({required this.body});
  

 final  UpdateCategoryRequestBody body;

/// Create a copy of UpdateCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateOldCategoryEventCopyWith<UpdateOldCategoryEvent> get copyWith => _$UpdateOldCategoryEventCopyWithImpl<UpdateOldCategoryEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateOldCategoryEvent&&(identical(other.body, body) || other.body == body));
}


@override
int get hashCode => Object.hash(runtimeType,body);

@override
String toString() {
  return 'UpdateCategoryEvent.updateOldCategory(body: $body)';
}


}

/// @nodoc
abstract mixin class $UpdateOldCategoryEventCopyWith<$Res> implements $UpdateCategoryEventCopyWith<$Res> {
  factory $UpdateOldCategoryEventCopyWith(UpdateOldCategoryEvent value, $Res Function(UpdateOldCategoryEvent) _then) = _$UpdateOldCategoryEventCopyWithImpl;
@useResult
$Res call({
 UpdateCategoryRequestBody body
});




}
/// @nodoc
class _$UpdateOldCategoryEventCopyWithImpl<$Res>
    implements $UpdateOldCategoryEventCopyWith<$Res> {
  _$UpdateOldCategoryEventCopyWithImpl(this._self, this._then);

  final UpdateOldCategoryEvent _self;
  final $Res Function(UpdateOldCategoryEvent) _then;

/// Create a copy of UpdateCategoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? body = null,}) {
  return _then(UpdateOldCategoryEvent(
body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as UpdateCategoryRequestBody,
  ));
}


}

/// @nodoc
mixin _$UpdateCategoryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCategoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateCategoryState()';
}


}

/// @nodoc
class $UpdateCategoryStateCopyWith<$Res>  {
$UpdateCategoryStateCopyWith(UpdateCategoryState _, $Res Function(UpdateCategoryState) __);
}


/// Adds pattern-matching-related methods to [UpdateCategoryState].
extension UpdateCategoryStatePatterns on UpdateCategoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( LoadinState value)?  loading,TResult Function( SuccessState value)?  success,TResult Function( ErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadinState() when loading != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( LoadinState value)  loading,required TResult Function( SuccessState value)  success,required TResult Function( ErrorState value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LoadinState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( LoadinState value)?  loading,TResult? Function( SuccessState value)?  success,TResult? Function( ErrorState value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadinState() when loading != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadinState() when loading != null:
return loading();case SuccessState() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case LoadinState():
return loading();case SuccessState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadinState() when loading != null:
return loading();case SuccessState() when success != null:
return success();case ErrorState() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements UpdateCategoryState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateCategoryState.initial()';
}


}




/// @nodoc


class LoadinState implements UpdateCategoryState {
  const LoadinState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadinState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateCategoryState.loading()';
}


}




/// @nodoc


class SuccessState implements UpdateCategoryState {
  const SuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateCategoryState.success()';
}


}




/// @nodoc


class ErrorState implements UpdateCategoryState {
  const ErrorState({required this.error});
  

 final  String error;

/// Create a copy of UpdateCategoryState
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
  return 'UpdateCategoryState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorStateCopyWith<$Res> implements $UpdateCategoryStateCopyWith<$Res> {
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

/// Create a copy of UpdateCategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorState(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
