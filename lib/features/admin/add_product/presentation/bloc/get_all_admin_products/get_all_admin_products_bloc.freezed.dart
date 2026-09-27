// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_admin_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetAllAdminProductsEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAllAdminProductsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetAllAdminProductsEvent()';
  }
}

/// @nodoc
class $GetAllAdminProductsEventCopyWith<$Res> {
  $GetAllAdminProductsEventCopyWith(
      GetAllAdminProductsEvent _, $Res Function(GetAllAdminProductsEvent) __);
}

/// Adds pattern-matching-related methods to [GetAllAdminProductsEvent].
extension GetAllAdminProductsEventPatterns on GetAllAdminProductsEvent {
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
    TResult Function(FetchAllAdminProductsEvent value)? fetchAllAdminProducts,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case FetchAllAdminProductsEvent() when fetchAllAdminProducts != null:
        return fetchAllAdminProducts(_that);
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
    required TResult Function(FetchAllAdminProductsEvent value)
        fetchAllAdminProducts,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started(_that);
      case FetchAllAdminProductsEvent():
        return fetchAllAdminProducts(_that);
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
    TResult? Function(FetchAllAdminProductsEvent value)? fetchAllAdminProducts,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case FetchAllAdminProductsEvent() when fetchAllAdminProducts != null:
        return fetchAllAdminProducts(_that);
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
    TResult Function(bool isloading)? fetchAllAdminProducts,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case FetchAllAdminProductsEvent() when fetchAllAdminProducts != null:
        return fetchAllAdminProducts(_that.isloading);
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
    required TResult Function(bool isloading) fetchAllAdminProducts,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started();
      case FetchAllAdminProductsEvent():
        return fetchAllAdminProducts(_that.isloading);
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
    TResult? Function(bool isloading)? fetchAllAdminProducts,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case FetchAllAdminProductsEvent() when fetchAllAdminProducts != null:
        return fetchAllAdminProducts(_that.isloading);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Started implements GetAllAdminProductsEvent {
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
    return 'GetAllAdminProductsEvent.started()';
  }
}

/// @nodoc

class FetchAllAdminProductsEvent implements GetAllAdminProductsEvent {
  const FetchAllAdminProductsEvent({required this.isloading});

  final bool isloading;

  /// Create a copy of GetAllAdminProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FetchAllAdminProductsEventCopyWith<FetchAllAdminProductsEvent>
      get copyWith =>
          _$FetchAllAdminProductsEventCopyWithImpl<FetchAllAdminProductsEvent>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchAllAdminProductsEvent &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isloading);

  @override
  String toString() {
    return 'GetAllAdminProductsEvent.fetchAllAdminProducts(isloading: $isloading)';
  }
}

/// @nodoc
abstract mixin class $FetchAllAdminProductsEventCopyWith<$Res>
    implements $GetAllAdminProductsEventCopyWith<$Res> {
  factory $FetchAllAdminProductsEventCopyWith(FetchAllAdminProductsEvent value,
          $Res Function(FetchAllAdminProductsEvent) _then) =
      _$FetchAllAdminProductsEventCopyWithImpl;
  @useResult
  $Res call({bool isloading});
}

/// @nodoc
class _$FetchAllAdminProductsEventCopyWithImpl<$Res>
    implements $FetchAllAdminProductsEventCopyWith<$Res> {
  _$FetchAllAdminProductsEventCopyWithImpl(this._self, this._then);

  final FetchAllAdminProductsEvent _self;
  final $Res Function(FetchAllAdminProductsEvent) _then;

  /// Create a copy of GetAllAdminProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isloading = null,
  }) {
    return _then(FetchAllAdminProductsEvent(
      isloading: null == isloading
          ? _self.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$GetAllAdminProductsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAllAdminProductsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetAllAdminProductsState()';
  }
}

/// @nodoc
class $GetAllAdminProductsStateCopyWith<$Res> {
  $GetAllAdminProductsStateCopyWith(
      GetAllAdminProductsState _, $Res Function(GetAllAdminProductsState) __);
}

/// Adds pattern-matching-related methods to [GetAllAdminProductsState].
extension GetAllAdminProductsStatePatterns on GetAllAdminProductsState {
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
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(EmptyState value)? empty,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LoadingState() when loading != null:
        return loading(_that);
      case SuccessState() when success != null:
        return success(_that);
      case EmptyState() when empty != null:
        return empty(_that);
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
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(EmptyState value) empty,
    required TResult Function(ErrorState value) error,
  }) {
    final _that = this;
    switch (_that) {
      case LoadingState():
        return loading(_that);
      case SuccessState():
        return success(_that);
      case EmptyState():
        return empty(_that);
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
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(EmptyState value)? empty,
    TResult? Function(ErrorState value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case LoadingState() when loading != null:
        return loading(_that);
      case SuccessState() when success != null:
        return success(_that);
      case EmptyState() when empty != null:
        return empty(_that);
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
    TResult Function()? loading,
    TResult Function(List<ProductGetAllModel> productList)? success,
    TResult Function()? empty,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LoadingState() when loading != null:
        return loading();
      case SuccessState() when success != null:
        return success(_that.productList);
      case EmptyState() when empty != null:
        return empty();
      case ErrorState() when error != null:
        return error(_that.error);
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
    required TResult Function() loading,
    required TResult Function(List<ProductGetAllModel> productList) success,
    required TResult Function() empty,
    required TResult Function(String error) error,
  }) {
    final _that = this;
    switch (_that) {
      case LoadingState():
        return loading();
      case SuccessState():
        return success(_that.productList);
      case EmptyState():
        return empty();
      case ErrorState():
        return error(_that.error);
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
    TResult? Function()? loading,
    TResult? Function(List<ProductGetAllModel> productList)? success,
    TResult? Function()? empty,
    TResult? Function(String error)? error,
  }) {
    final _that = this;
    switch (_that) {
      case LoadingState() when loading != null:
        return loading();
      case SuccessState() when success != null:
        return success(_that.productList);
      case EmptyState() when empty != null:
        return empty();
      case ErrorState() when error != null:
        return error(_that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class LoadingState implements GetAllAdminProductsState {
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
    return 'GetAllAdminProductsState.loading()';
  }
}

/// @nodoc

class SuccessState implements GetAllAdminProductsState {
  const SuccessState({required final List<ProductGetAllModel> productList})
      : _productList = productList;

  final List<ProductGetAllModel> _productList;
  List<ProductGetAllModel> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  /// Create a copy of GetAllAdminProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SuccessStateCopyWith<SuccessState> get copyWith =>
      _$SuccessStateCopyWithImpl<SuccessState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuccessState &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productList));

  @override
  String toString() {
    return 'GetAllAdminProductsState.success(productList: $productList)';
  }
}

/// @nodoc
abstract mixin class $SuccessStateCopyWith<$Res>
    implements $GetAllAdminProductsStateCopyWith<$Res> {
  factory $SuccessStateCopyWith(
          SuccessState value, $Res Function(SuccessState) _then) =
      _$SuccessStateCopyWithImpl;
  @useResult
  $Res call({List<ProductGetAllModel> productList});
}

/// @nodoc
class _$SuccessStateCopyWithImpl<$Res> implements $SuccessStateCopyWith<$Res> {
  _$SuccessStateCopyWithImpl(this._self, this._then);

  final SuccessState _self;
  final $Res Function(SuccessState) _then;

  /// Create a copy of GetAllAdminProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? productList = null,
  }) {
    return _then(SuccessState(
      productList: null == productList
          ? _self._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductGetAllModel>,
    ));
  }
}

/// @nodoc

class EmptyState implements GetAllAdminProductsState {
  const EmptyState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetAllAdminProductsState.empty()';
  }
}

/// @nodoc

class ErrorState implements GetAllAdminProductsState {
  const ErrorState({required this.error});

  final String error;

  /// Create a copy of GetAllAdminProductsState
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
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'GetAllAdminProductsState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $ErrorStateCopyWith<$Res>
    implements $GetAllAdminProductsStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) _then) =
      _$ErrorStateCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$ErrorStateCopyWithImpl<$Res> implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(this._self, this._then);

  final ErrorState _self;
  final $Res Function(ErrorState) _then;

  /// Create a copy of GetAllAdminProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(ErrorState(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
