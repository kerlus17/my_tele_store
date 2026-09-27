// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteProductEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteProductEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeleteProductEvent()';
  }
}

/// @nodoc
class $DeleteProductEventCopyWith<$Res> {
  $DeleteProductEventCopyWith(
      DeleteProductEvent _, $Res Function(DeleteProductEvent) __);
}

/// Adds pattern-matching-related methods to [DeleteProductEvent].
extension DeleteProductEventPatterns on DeleteProductEvent {
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
    TResult Function(DeleteproductByIdEvent value)? deleteproduct,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case DeleteproductByIdEvent() when deleteproduct != null:
        return deleteproduct(_that);
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
    required TResult Function(DeleteproductByIdEvent value) deleteproduct,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started(_that);
      case DeleteproductByIdEvent():
        return deleteproduct(_that);
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
    TResult? Function(DeleteproductByIdEvent value)? deleteproduct,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case DeleteproductByIdEvent() when deleteproduct != null:
        return deleteproduct(_that);
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
    TResult Function(String id)? deleteproduct,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case DeleteproductByIdEvent() when deleteproduct != null:
        return deleteproduct(_that.id);
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
    required TResult Function(String id) deleteproduct,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started();
      case DeleteproductByIdEvent():
        return deleteproduct(_that.id);
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
    TResult? Function(String id)? deleteproduct,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case DeleteproductByIdEvent() when deleteproduct != null:
        return deleteproduct(_that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Started implements DeleteProductEvent {
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
    return 'DeleteProductEvent.started()';
  }
}

/// @nodoc

class DeleteproductByIdEvent implements DeleteProductEvent {
  const DeleteproductByIdEvent({required this.id});

  final String id;

  /// Create a copy of DeleteProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeleteproductByIdEventCopyWith<DeleteproductByIdEvent> get copyWith =>
      _$DeleteproductByIdEventCopyWithImpl<DeleteproductByIdEvent>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteproductByIdEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'DeleteProductEvent.deleteproduct(id: $id)';
  }
}

/// @nodoc
abstract mixin class $DeleteproductByIdEventCopyWith<$Res>
    implements $DeleteProductEventCopyWith<$Res> {
  factory $DeleteproductByIdEventCopyWith(DeleteproductByIdEvent value,
          $Res Function(DeleteproductByIdEvent) _then) =
      _$DeleteproductByIdEventCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$DeleteproductByIdEventCopyWithImpl<$Res>
    implements $DeleteproductByIdEventCopyWith<$Res> {
  _$DeleteproductByIdEventCopyWithImpl(this._self, this._then);

  final DeleteproductByIdEvent _self;
  final $Res Function(DeleteproductByIdEvent) _then;

  /// Create a copy of DeleteProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(DeleteproductByIdEvent(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$DeleteProductState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteProductState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeleteProductState()';
  }
}

/// @nodoc
class $DeleteProductStateCopyWith<$Res> {
  $DeleteProductStateCopyWith(
      DeleteProductState _, $Res Function(DeleteProductState) __);
}

/// Adds pattern-matching-related methods to [DeleteProductState].
extension DeleteProductStatePatterns on DeleteProductState {
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
    TResult Function(String id)? loading,
    TResult Function()? success,
    TResult Function(String errMsg)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case LoadingState() when loading != null:
        return loading(_that.id);
      case SuccessState() when success != null:
        return success();
      case ErrorState() when error != null:
        return error(_that.errMsg);
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
    required TResult Function(String id) loading,
    required TResult Function() success,
    required TResult Function(String errMsg) error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case LoadingState():
        return loading(_that.id);
      case SuccessState():
        return success();
      case ErrorState():
        return error(_that.errMsg);
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
    TResult? Function(String id)? loading,
    TResult? Function()? success,
    TResult? Function(String errMsg)? error,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case LoadingState() when loading != null:
        return loading(_that.id);
      case SuccessState() when success != null:
        return success();
      case ErrorState() when error != null:
        return error(_that.errMsg);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements DeleteProductState {
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
    return 'DeleteProductState.initial()';
  }
}

/// @nodoc

class LoadingState implements DeleteProductState {
  const LoadingState({required this.id});

  final String id;

  /// Create a copy of DeleteProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadingStateCopyWith<LoadingState> get copyWith =>
      _$LoadingStateCopyWithImpl<LoadingState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingState &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'DeleteProductState.loading(id: $id)';
  }
}

/// @nodoc
abstract mixin class $LoadingStateCopyWith<$Res>
    implements $DeleteProductStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) _then) =
      _$LoadingStateCopyWithImpl;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res> implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(this._self, this._then);

  final LoadingState _self;
  final $Res Function(LoadingState) _then;

  /// Create a copy of DeleteProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(LoadingState(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SuccessState implements DeleteProductState {
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
    return 'DeleteProductState.success()';
  }
}

/// @nodoc

class ErrorState implements DeleteProductState {
  const ErrorState({required this.errMsg});

  final String errMsg;

  /// Create a copy of DeleteProductState
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
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errMsg);

  @override
  String toString() {
    return 'DeleteProductState.error(errMsg: $errMsg)';
  }
}

/// @nodoc
abstract mixin class $ErrorStateCopyWith<$Res>
    implements $DeleteProductStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) _then) =
      _$ErrorStateCopyWithImpl;
  @useResult
  $Res call({String errMsg});
}

/// @nodoc
class _$ErrorStateCopyWithImpl<$Res> implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(this._self, this._then);

  final ErrorState _self;
  final $Res Function(ErrorState) _then;

  /// Create a copy of DeleteProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? errMsg = null,
  }) {
    return _then(ErrorState(
      errMsg: null == errMsg
          ? _self.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
