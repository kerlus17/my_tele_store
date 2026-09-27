// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateProductEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateProductEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateProductEvent()';
  }
}

/// @nodoc
class $UpdateProductEventCopyWith<$Res> {
  $UpdateProductEventCopyWith(
      UpdateProductEvent _, $Res Function(UpdateProductEvent) __);
}

/// Adds pattern-matching-related methods to [UpdateProductEvent].
extension UpdateProductEventPatterns on UpdateProductEvent {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(EditProductEvent value)? editProduct,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case EditProductEvent() when editProduct != null:
        return editProduct(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(EditProductEvent value) editProduct,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started(_that);
      case EditProductEvent():
        return editProduct(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(EditProductEvent value)? editProduct,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case EditProductEvent() when editProduct != null:
        return editProduct(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UpdateProductRequestBody body)? editProduct,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case EditProductEvent() when editProduct != null:
        return editProduct(_that.body);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UpdateProductRequestBody body) editProduct,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started();
      case EditProductEvent():
        return editProduct(_that.body);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(UpdateProductRequestBody body)? editProduct,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case EditProductEvent() when editProduct != null:
        return editProduct(_that.body);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Started implements UpdateProductEvent {
  const _Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateProductEvent.started()';
  }
}

/// @nodoc

class EditProductEvent implements UpdateProductEvent {
  const EditProductEvent({required this.body});

  final UpdateProductRequestBody body;

  /// Create a copy of UpdateProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditProductEventCopyWith<EditProductEvent> get copyWith =>
      _$EditProductEventCopyWithImpl<EditProductEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditProductEvent &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, body);

  @override
  String toString() {
    return 'UpdateProductEvent.editProduct(body: $body)';
  }
}

/// @nodoc
abstract mixin class $EditProductEventCopyWith<$Res>
    implements $UpdateProductEventCopyWith<$Res> {
  factory $EditProductEventCopyWith(
          EditProductEvent value, $Res Function(EditProductEvent) _then) =
      _$EditProductEventCopyWithImpl;
  @useResult
  $Res call({UpdateProductRequestBody body});
}

/// @nodoc
class _$EditProductEventCopyWithImpl<$Res>
    implements $EditProductEventCopyWith<$Res> {
  _$EditProductEventCopyWithImpl(this._self, this._then);

  final EditProductEvent _self;
  final $Res Function(EditProductEvent) _then;

  /// Create a copy of UpdateProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? body = null,
  }) {
    return _then(EditProductEvent(
      body: null == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as UpdateProductRequestBody,
    ));
  }
}

/// @nodoc
mixin _$UpdateProductState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateProductState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateProductState()';
  }
}

/// @nodoc
class $UpdateProductStateCopyWith<$Res> {
  $UpdateProductStateCopyWith(
      UpdateProductState _, $Res Function(UpdateProductState) __);
}

/// Adds pattern-matching-related methods to [UpdateProductState].
extension UpdateProductStatePatterns on UpdateProductState {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case LoadingState() when loading != null:
        return loading(_that);
      case SuccessState() when success != null:
        return success(_that);
      case ErrorState() when error != null:
        return error(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(ErrorState value) error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case LoadingState():
        return loading(_that);
      case SuccessState():
        return success(_that);
      case ErrorState():
        return error(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(ErrorState value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case LoadingState() when loading != null:
        return loading(_that);
      case SuccessState() when success != null:
        return success(_that);
      case ErrorState() when error != null:
        return error(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case LoadingState() when loading != null:
        return loading();
      case SuccessState() when success != null:
        return success();
      case ErrorState() when error != null:
        return error(_that.msg);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String msg) error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case LoadingState():
        return loading();
      case SuccessState():
        return success();
      case ErrorState():
        return error(_that.msg);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(String msg)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case LoadingState() when loading != null:
        return loading();
      case SuccessState() when success != null:
        return success();
      case ErrorState() when error != null:
        return error(_that.msg);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements UpdateProductState {
  const _Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateProductState.initial()';
  }
}

/// @nodoc

class LoadingState implements UpdateProductState {
  const LoadingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateProductState.loading()';
  }
}

/// @nodoc

class SuccessState implements UpdateProductState {
  const SuccessState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UpdateProductState.success()';
  }
}

/// @nodoc

class ErrorState implements UpdateProductState {
  const ErrorState({required this.msg});

  final String msg;

  /// Create a copy of UpdateProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorState &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @override
  String toString() {
    return 'UpdateProductState.error(msg: $msg)';
  }
}

/// @nodoc
abstract mixin class $ErrorStateCopyWith<$Res>
    implements $UpdateProductStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) _then) =
      _$ErrorStateCopyWithImpl;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class _$ErrorStateCopyWithImpl<$Res> implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(this._self, this._then);

  final ErrorState _self;
  final $Res Function(ErrorState) _then;

  /// Create a copy of UpdateProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? msg = null,
  }) {
    return _then(ErrorState(
      msg: null == msg
          ? _self.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
