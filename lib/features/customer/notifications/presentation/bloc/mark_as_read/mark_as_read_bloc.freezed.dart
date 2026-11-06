// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mark_as_read_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MarkAsReadEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkAsReadEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarkAsReadEvent()';
}


}

/// @nodoc
class $MarkAsReadEventCopyWith<$Res>  {
$MarkAsReadEventCopyWith(MarkAsReadEvent _, $Res Function(MarkAsReadEvent) __);
}


/// Adds pattern-matching-related methods to [MarkAsReadEvent].
extension MarkAsReadEventPatterns on MarkAsReadEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( MarkAllEvent value)?  markAsRead,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case MarkAllEvent() when markAsRead != null:
return markAsRead(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( MarkAllEvent value)  markAsRead,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case MarkAllEvent():
return markAsRead(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( MarkAllEvent value)?  markAsRead,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case MarkAllEvent() when markAsRead != null:
return markAsRead(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  markAsRead,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case MarkAllEvent() when markAsRead != null:
return markAsRead();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  markAsRead,}) {final _that = this;
switch (_that) {
case _Started():
return started();case MarkAllEvent():
return markAsRead();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  markAsRead,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case MarkAllEvent() when markAsRead != null:
return markAsRead();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements MarkAsReadEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarkAsReadEvent.started()';
}


}




/// @nodoc


class MarkAllEvent implements MarkAsReadEvent {
  const MarkAllEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkAllEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarkAsReadEvent.markAsRead()';
}


}




/// @nodoc
mixin _$MarkAsReadState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkAsReadState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarkAsReadState()';
}


}

/// @nodoc
class $MarkAsReadStateCopyWith<$Res>  {
$MarkAsReadStateCopyWith(MarkAsReadState _, $Res Function(MarkAsReadState) __);
}


/// Adds pattern-matching-related methods to [MarkAsReadState].
extension MarkAsReadStatePatterns on MarkAsReadState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( ErrorState value)?  error,TResult Function( SuccessState value)?  Success,TResult Function( LoadingState value)?  loading,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ErrorState() when error != null:
return error(_that);case SuccessState() when Success != null:
return Success(_that);case LoadingState() when loading != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( ErrorState value)  error,required TResult Function( SuccessState value)  Success,required TResult Function( LoadingState value)  loading,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ErrorState():
return error(_that);case SuccessState():
return Success(_that);case LoadingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( ErrorState value)?  error,TResult? Function( SuccessState value)?  Success,TResult? Function( LoadingState value)?  loading,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ErrorState() when error != null:
return error(_that);case SuccessState() when Success != null:
return Success(_that);case LoadingState() when loading != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String error)?  error,TResult Function()?  Success,TResult Function()?  loading,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ErrorState() when error != null:
return error(_that.error);case SuccessState() when Success != null:
return Success();case LoadingState() when loading != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String error)  error,required TResult Function()  Success,required TResult Function()  loading,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ErrorState():
return error(_that.error);case SuccessState():
return Success();case LoadingState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String error)?  error,TResult? Function()?  Success,TResult? Function()?  loading,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ErrorState() when error != null:
return error(_that.error);case SuccessState() when Success != null:
return Success();case LoadingState() when loading != null:
return loading();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements MarkAsReadState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarkAsReadState.initial()';
}


}




/// @nodoc


class ErrorState implements MarkAsReadState {
  const ErrorState({required this.error});
  

 final  String error;

/// Create a copy of MarkAsReadState
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
  return 'MarkAsReadState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorStateCopyWith<$Res> implements $MarkAsReadStateCopyWith<$Res> {
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

/// Create a copy of MarkAsReadState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorState(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SuccessState implements MarkAsReadState {
  const SuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarkAsReadState.Success()';
}


}




/// @nodoc


class LoadingState implements MarkAsReadState {
  const LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MarkAsReadState.loading()';
}


}




// dart format on
