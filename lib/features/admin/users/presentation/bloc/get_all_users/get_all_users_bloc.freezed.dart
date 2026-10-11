// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetAllUsersEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAllUsersEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetAllUsersEvent()';
  }
}

/// @nodoc
class $GetAllUsersEventCopyWith<$Res> {
  $GetAllUsersEventCopyWith(
      GetAllUsersEvent _, $Res Function(GetAllUsersEvent) __);
}

/// Adds pattern-matching-related methods to [GetAllUsersEvent].
extension GetAllUsersEventPatterns on GetAllUsersEvent {
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
    TResult Function(FetchAllUsersEvent value)? fetchAllUsers,
    TResult Function(SearchForUsersEvent value)? searchForUsers,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case FetchAllUsersEvent() when fetchAllUsers != null:
        return fetchAllUsers(_that);
      case SearchForUsersEvent() when searchForUsers != null:
        return searchForUsers(_that);
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
    required TResult Function(FetchAllUsersEvent value) fetchAllUsers,
    required TResult Function(SearchForUsersEvent value) searchForUsers,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started(_that);
      case FetchAllUsersEvent():
        return fetchAllUsers(_that);
      case SearchForUsersEvent():
        return searchForUsers(_that);
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
    TResult? Function(FetchAllUsersEvent value)? fetchAllUsers,
    TResult? Function(SearchForUsersEvent value)? searchForUsers,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case FetchAllUsersEvent() when fetchAllUsers != null:
        return fetchAllUsers(_that);
      case SearchForUsersEvent() when searchForUsers != null:
        return searchForUsers(_that);
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
    TResult Function(bool isloading)? fetchAllUsers,
    TResult Function(String? searchName)? searchForUsers,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case FetchAllUsersEvent() when fetchAllUsers != null:
        return fetchAllUsers(_that.isloading);
      case SearchForUsersEvent() when searchForUsers != null:
        return searchForUsers(_that.searchName);
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
    required TResult Function(bool isloading) fetchAllUsers,
    required TResult Function(String? searchName) searchForUsers,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started();
      case FetchAllUsersEvent():
        return fetchAllUsers(_that.isloading);
      case SearchForUsersEvent():
        return searchForUsers(_that.searchName);
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
    TResult? Function(bool isloading)? fetchAllUsers,
    TResult? Function(String? searchName)? searchForUsers,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started();
      case FetchAllUsersEvent() when fetchAllUsers != null:
        return fetchAllUsers(_that.isloading);
      case SearchForUsersEvent() when searchForUsers != null:
        return searchForUsers(_that.searchName);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Started implements GetAllUsersEvent {
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
    return 'GetAllUsersEvent.started()';
  }
}

/// @nodoc

class FetchAllUsersEvent implements GetAllUsersEvent {
  const FetchAllUsersEvent({required this.isloading});

  final bool isloading;

  /// Create a copy of GetAllUsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FetchAllUsersEventCopyWith<FetchAllUsersEvent> get copyWith =>
      _$FetchAllUsersEventCopyWithImpl<FetchAllUsersEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchAllUsersEvent &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isloading);

  @override
  String toString() {
    return 'GetAllUsersEvent.fetchAllUsers(isloading: $isloading)';
  }
}

/// @nodoc
abstract mixin class $FetchAllUsersEventCopyWith<$Res>
    implements $GetAllUsersEventCopyWith<$Res> {
  factory $FetchAllUsersEventCopyWith(
          FetchAllUsersEvent value, $Res Function(FetchAllUsersEvent) _then) =
      _$FetchAllUsersEventCopyWithImpl;
  @useResult
  $Res call({bool isloading});
}

/// @nodoc
class _$FetchAllUsersEventCopyWithImpl<$Res>
    implements $FetchAllUsersEventCopyWith<$Res> {
  _$FetchAllUsersEventCopyWithImpl(this._self, this._then);

  final FetchAllUsersEvent _self;
  final $Res Function(FetchAllUsersEvent) _then;

  /// Create a copy of GetAllUsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isloading = null,
  }) {
    return _then(FetchAllUsersEvent(
      isloading: null == isloading
          ? _self.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class SearchForUsersEvent implements GetAllUsersEvent {
  const SearchForUsersEvent(this.searchName);

  final String? searchName;

  /// Create a copy of GetAllUsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchForUsersEventCopyWith<SearchForUsersEvent> get copyWith =>
      _$SearchForUsersEventCopyWithImpl<SearchForUsersEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchForUsersEvent &&
            (identical(other.searchName, searchName) ||
                other.searchName == searchName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchName);

  @override
  String toString() {
    return 'GetAllUsersEvent.searchForUsers(searchName: $searchName)';
  }
}

/// @nodoc
abstract mixin class $SearchForUsersEventCopyWith<$Res>
    implements $GetAllUsersEventCopyWith<$Res> {
  factory $SearchForUsersEventCopyWith(
          SearchForUsersEvent value, $Res Function(SearchForUsersEvent) _then) =
      _$SearchForUsersEventCopyWithImpl;
  @useResult
  $Res call({String? searchName});
}

/// @nodoc
class _$SearchForUsersEventCopyWithImpl<$Res>
    implements $SearchForUsersEventCopyWith<$Res> {
  _$SearchForUsersEventCopyWithImpl(this._self, this._then);

  final SearchForUsersEvent _self;
  final $Res Function(SearchForUsersEvent) _then;

  /// Create a copy of GetAllUsersEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? searchName = freezed,
  }) {
    return _then(SearchForUsersEvent(
      freezed == searchName
          ? _self.searchName
          : searchName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$GetAllUsersState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAllUsersState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetAllUsersState()';
  }
}

/// @nodoc
class $GetAllUsersStateCopyWith<$Res> {
  $GetAllUsersStateCopyWith(
      GetAllUsersState _, $Res Function(GetAllUsersState) __);
}

/// Adds pattern-matching-related methods to [GetAllUsersState].
extension GetAllUsersStatePatterns on GetAllUsersState {
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
    TResult Function(ErrorState value)? error,
    TResult Function(EmptyState value)? empty,
    TResult Function(SearchUsersState value)? searchUsers,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LoadingState() when loading != null:
        return loading(_that);
      case SuccessState() when success != null:
        return success(_that);
      case ErrorState() when error != null:
        return error(_that);
      case EmptyState() when empty != null:
        return empty(_that);
      case SearchUsersState() when searchUsers != null:
        return searchUsers(_that);
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
    required TResult Function(ErrorState value) error,
    required TResult Function(EmptyState value) empty,
    required TResult Function(SearchUsersState value) searchUsers,
  }) {
    final _that = this;
    switch (_that) {
      case LoadingState():
        return loading(_that);
      case SuccessState():
        return success(_that);
      case ErrorState():
        return error(_that);
      case EmptyState():
        return empty(_that);
      case SearchUsersState():
        return searchUsers(_that);
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
    TResult? Function(ErrorState value)? error,
    TResult? Function(EmptyState value)? empty,
    TResult? Function(SearchUsersState value)? searchUsers,
  }) {
    final _that = this;
    switch (_that) {
      case LoadingState() when loading != null:
        return loading(_that);
      case SuccessState() when success != null:
        return success(_that);
      case ErrorState() when error != null:
        return error(_that);
      case EmptyState() when empty != null:
        return empty(_that);
      case SearchUsersState() when searchUsers != null:
        return searchUsers(_that);
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
    TResult Function(List<UsersModel> response)? success,
    TResult Function(String error)? error,
    TResult Function()? empty,
    TResult Function(List<UsersModel> searchUser)? searchUsers,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case LoadingState() when loading != null:
        return loading();
      case SuccessState() when success != null:
        return success(_that.response);
      case ErrorState() when error != null:
        return error(_that.error);
      case EmptyState() when empty != null:
        return empty();
      case SearchUsersState() when searchUsers != null:
        return searchUsers(_that.searchUser);
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
    required TResult Function(List<UsersModel> response) success,
    required TResult Function(String error) error,
    required TResult Function() empty,
    required TResult Function(List<UsersModel> searchUser) searchUsers,
  }) {
    final _that = this;
    switch (_that) {
      case LoadingState():
        return loading();
      case SuccessState():
        return success(_that.response);
      case ErrorState():
        return error(_that.error);
      case EmptyState():
        return empty();
      case SearchUsersState():
        return searchUsers(_that.searchUser);
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
    TResult? Function(List<UsersModel> response)? success,
    TResult? Function(String error)? error,
    TResult? Function()? empty,
    TResult? Function(List<UsersModel> searchUser)? searchUsers,
  }) {
    final _that = this;
    switch (_that) {
      case LoadingState() when loading != null:
        return loading();
      case SuccessState() when success != null:
        return success(_that.response);
      case ErrorState() when error != null:
        return error(_that.error);
      case EmptyState() when empty != null:
        return empty();
      case SearchUsersState() when searchUsers != null:
        return searchUsers(_that.searchUser);
      case _:
        return null;
    }
  }
}

/// @nodoc

class LoadingState implements GetAllUsersState {
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
    return 'GetAllUsersState.loading()';
  }
}

/// @nodoc

class SuccessState implements GetAllUsersState {
  const SuccessState(final List<UsersModel> response) : _response = response;

  final List<UsersModel> _response;
  List<UsersModel> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  /// Create a copy of GetAllUsersState
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
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @override
  String toString() {
    return 'GetAllUsersState.success(response: $response)';
  }
}

/// @nodoc
abstract mixin class $SuccessStateCopyWith<$Res>
    implements $GetAllUsersStateCopyWith<$Res> {
  factory $SuccessStateCopyWith(
          SuccessState value, $Res Function(SuccessState) _then) =
      _$SuccessStateCopyWithImpl;
  @useResult
  $Res call({List<UsersModel> response});
}

/// @nodoc
class _$SuccessStateCopyWithImpl<$Res> implements $SuccessStateCopyWith<$Res> {
  _$SuccessStateCopyWithImpl(this._self, this._then);

  final SuccessState _self;
  final $Res Function(SuccessState) _then;

  /// Create a copy of GetAllUsersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? response = null,
  }) {
    return _then(SuccessState(
      null == response
          ? _self._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<UsersModel>,
    ));
  }
}

/// @nodoc

class ErrorState implements GetAllUsersState {
  const ErrorState(this.error);

  final String error;

  /// Create a copy of GetAllUsersState
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
    return 'GetAllUsersState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $ErrorStateCopyWith<$Res>
    implements $GetAllUsersStateCopyWith<$Res> {
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

  /// Create a copy of GetAllUsersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(ErrorState(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class EmptyState implements GetAllUsersState {
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
    return 'GetAllUsersState.empty()';
  }
}

/// @nodoc

class SearchUsersState implements GetAllUsersState {
  const SearchUsersState(final List<UsersModel> searchUser)
      : _searchUser = searchUser;

  final List<UsersModel> _searchUser;
  List<UsersModel> get searchUser {
    if (_searchUser is EqualUnmodifiableListView) return _searchUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchUser);
  }

  /// Create a copy of GetAllUsersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchUsersStateCopyWith<SearchUsersState> get copyWith =>
      _$SearchUsersStateCopyWithImpl<SearchUsersState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchUsersState &&
            const DeepCollectionEquality()
                .equals(other._searchUser, _searchUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_searchUser));

  @override
  String toString() {
    return 'GetAllUsersState.searchUsers(searchUser: $searchUser)';
  }
}

/// @nodoc
abstract mixin class $SearchUsersStateCopyWith<$Res>
    implements $GetAllUsersStateCopyWith<$Res> {
  factory $SearchUsersStateCopyWith(
          SearchUsersState value, $Res Function(SearchUsersState) _then) =
      _$SearchUsersStateCopyWithImpl;
  @useResult
  $Res call({List<UsersModel> searchUser});
}

/// @nodoc
class _$SearchUsersStateCopyWithImpl<$Res>
    implements $SearchUsersStateCopyWith<$Res> {
  _$SearchUsersStateCopyWithImpl(this._self, this._then);

  final SearchUsersState _self;
  final $Res Function(SearchUsersState) _then;

  /// Create a copy of GetAllUsersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? searchUser = null,
  }) {
    return _then(SearchUsersState(
      null == searchUser
          ? _self._searchUser
          : searchUser // ignore: cast_nullable_to_non_nullable
              as List<UsersModel>,
    ));
  }
}

// dart format on
