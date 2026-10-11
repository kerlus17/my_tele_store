// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteUserEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeleteUserEvent()';
  }
}

/// @nodoc
class $DeleteUserEventCopyWith<$Res> {
  $DeleteUserEventCopyWith(
      DeleteUserEvent _, $Res Function(DeleteUserEvent) __);
}

/// Adds pattern-matching-related methods to [DeleteUserEvent].
extension DeleteUserEventPatterns on DeleteUserEvent {
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
    TResult Function(DeletedEvent value)? deleted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case DeletedEvent() when deleted != null:
        return deleted(_that);
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
    required TResult Function(DeletedEvent value) deleted,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started(_that);
      case DeletedEvent():
        return deleted(_that);
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
    TResult? Function(DeletedEvent value)? deleted,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case DeletedEvent() when deleted != null:
        return deleted(_that);
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
    TResult Function(String userId)? deleted,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case DeletedEvent() when deleted != null:
        return deleted(_that.userId);
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
    required TResult Function(String userId) deleted,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started();
      case DeletedEvent():
        return deleted(_that.userId);
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
    TResult? Function(String userId)? deleted,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case DeletedEvent() when deleted != null:
        return deleted(_that.userId);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Started implements DeleteUserEvent {
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
    return 'DeleteUserEvent.started()';
  }
}

/// @nodoc

class DeletedEvent implements DeleteUserEvent {
  const DeletedEvent(this.userId);

  final String userId;

  /// Create a copy of DeleteUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DeletedEventCopyWith<DeletedEvent> get copyWith =>
      _$DeletedEventCopyWithImpl<DeletedEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeletedEvent &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @override
  String toString() {
    return 'DeleteUserEvent.deleted(userId: $userId)';
  }
}

/// @nodoc
abstract mixin class $DeletedEventCopyWith<$Res>
    implements $DeleteUserEventCopyWith<$Res> {
  factory $DeletedEventCopyWith(
          DeletedEvent value, $Res Function(DeletedEvent) _then) =
      _$DeletedEventCopyWithImpl;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class _$DeletedEventCopyWithImpl<$Res> implements $DeletedEventCopyWith<$Res> {
  _$DeletedEventCopyWithImpl(this._self, this._then);

  final DeletedEvent _self;
  final $Res Function(DeletedEvent) _then;

  /// Create a copy of DeleteUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = null,
  }) {
    return _then(DeletedEvent(
      null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$DeleteUserState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DeleteUserState()';
  }
}

/// @nodoc
class $DeleteUserStateCopyWith<$Res> {
  $DeleteUserStateCopyWith(
      DeleteUserState _, $Res Function(DeleteUserState) __);
}

/// Adds pattern-matching-related methods to [DeleteUserState].
extension DeleteUserStatePatterns on DeleteUserState {
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
    TResult Function(FailureState value)? failure,
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
      case FailureState() when failure != null:
        return failure(_that);
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
    required TResult Function(FailureState value) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial(_that);
      case LoadingState():
        return loading(_that);
      case SuccessState():
        return success(_that);
      case FailureState():
        return failure(_that);
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
    TResult? Function(FailureState value)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial(_that);
      case LoadingState() when loading != null:
        return loading(_that);
      case SuccessState() when success != null:
        return success(_that);
      case FailureState() when failure != null:
        return failure(_that);
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
    TResult Function(String message)? failure,
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
      case FailureState() when failure != null:
        return failure(_that.message);
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
    required TResult Function(String message) failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial():
        return initial();
      case LoadingState():
        return loading(_that.id);
      case SuccessState():
        return success();
      case FailureState():
        return failure(_that.message);
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
    TResult? Function(String message)? failure,
  }) {
    final _that = this;
    switch (_that) {
      case _Initial() when initial != null:
        return initial();
      case LoadingState() when loading != null:
        return loading(_that.id);
      case SuccessState() when success != null:
        return success();
      case FailureState() when failure != null:
        return failure(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Initial implements DeleteUserState {
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
    return 'DeleteUserState.initial()';
  }
}

/// @nodoc

class LoadingState implements DeleteUserState {
  const LoadingState({required this.id});

  final String id;

  /// Create a copy of DeleteUserState
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
    return 'DeleteUserState.loading(id: $id)';
  }
}

/// @nodoc
abstract mixin class $LoadingStateCopyWith<$Res>
    implements $DeleteUserStateCopyWith<$Res> {
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

  /// Create a copy of DeleteUserState
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

class SuccessState implements DeleteUserState {
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
    return 'DeleteUserState.success()';
  }
}

/// @nodoc

class FailureState implements DeleteUserState {
  const FailureState(this.message);

  final String message;

  /// Create a copy of DeleteUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FailureStateCopyWith<FailureState> get copyWith =>
      _$FailureStateCopyWithImpl<FailureState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FailureState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'DeleteUserState.failure(message: $message)';
  }
}

/// @nodoc
abstract mixin class $FailureStateCopyWith<$Res>
    implements $DeleteUserStateCopyWith<$Res> {
  factory $FailureStateCopyWith(
          FailureState value, $Res Function(FailureState) _then) =
      _$FailureStateCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureStateCopyWithImpl<$Res> implements $FailureStateCopyWith<$Res> {
  _$FailureStateCopyWithImpl(this._self, this._then);

  final FailureState _self;
  final $Res Function(FailureState) _then;

  /// Create a copy of DeleteUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(FailureState(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
