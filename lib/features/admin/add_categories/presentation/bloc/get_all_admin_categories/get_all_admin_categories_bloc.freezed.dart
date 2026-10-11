// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_admin_categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetAllAdminCategoriesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllAdminCategoriesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllAdminCategoriesEvent()';
}


}

/// @nodoc
class $GetAllAdminCategoriesEventCopyWith<$Res>  {
$GetAllAdminCategoriesEventCopyWith(GetAllAdminCategoriesEvent _, $Res Function(GetAllAdminCategoriesEvent) __);
}


/// Adds pattern-matching-related methods to [GetAllAdminCategoriesEvent].
extension GetAllAdminCategoriesEventPatterns on GetAllAdminCategoriesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( GetAllCategoriesEvent value)?  getAllAdminCategories,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case GetAllCategoriesEvent() when getAllAdminCategories != null:
return getAllAdminCategories(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( GetAllCategoriesEvent value)  getAllAdminCategories,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case GetAllCategoriesEvent():
return getAllAdminCategories(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( GetAllCategoriesEvent value)?  getAllAdminCategories,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case GetAllCategoriesEvent() when getAllAdminCategories != null:
return getAllAdminCategories(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( bool isloading)?  getAllAdminCategories,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case GetAllCategoriesEvent() when getAllAdminCategories != null:
return getAllAdminCategories(_that.isloading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( bool isloading)  getAllAdminCategories,}) {final _that = this;
switch (_that) {
case _Started():
return started();case GetAllCategoriesEvent():
return getAllAdminCategories(_that.isloading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( bool isloading)?  getAllAdminCategories,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case GetAllCategoriesEvent() when getAllAdminCategories != null:
return getAllAdminCategories(_that.isloading);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements GetAllAdminCategoriesEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllAdminCategoriesEvent.started()';
}


}




/// @nodoc


class GetAllCategoriesEvent implements GetAllAdminCategoriesEvent {
  const GetAllCategoriesEvent({required this.isloading});
  

 final  bool isloading;

/// Create a copy of GetAllAdminCategoriesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAllCategoriesEventCopyWith<GetAllCategoriesEvent> get copyWith => _$GetAllCategoriesEventCopyWithImpl<GetAllCategoriesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllCategoriesEvent&&(identical(other.isloading, isloading) || other.isloading == isloading));
}


@override
int get hashCode => Object.hash(runtimeType,isloading);

@override
String toString() {
  return 'GetAllAdminCategoriesEvent.getAllAdminCategories(isloading: $isloading)';
}


}

/// @nodoc
abstract mixin class $GetAllCategoriesEventCopyWith<$Res> implements $GetAllAdminCategoriesEventCopyWith<$Res> {
  factory $GetAllCategoriesEventCopyWith(GetAllCategoriesEvent value, $Res Function(GetAllCategoriesEvent) _then) = _$GetAllCategoriesEventCopyWithImpl;
@useResult
$Res call({
 bool isloading
});




}
/// @nodoc
class _$GetAllCategoriesEventCopyWithImpl<$Res>
    implements $GetAllCategoriesEventCopyWith<$Res> {
  _$GetAllCategoriesEventCopyWithImpl(this._self, this._then);

  final GetAllCategoriesEvent _self;
  final $Res Function(GetAllCategoriesEvent) _then;

/// Create a copy of GetAllAdminCategoriesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isloading = null,}) {
  return _then(GetAllCategoriesEvent(
isloading: null == isloading ? _self.isloading : isloading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$GetAllAdminCategoriesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllAdminCategoriesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllAdminCategoriesState()';
}


}

/// @nodoc
class $GetAllAdminCategoriesStateCopyWith<$Res>  {
$GetAllAdminCategoriesStateCopyWith(GetAllAdminCategoriesState _, $Res Function(GetAllAdminCategoriesState) __);
}


/// Adds pattern-matching-related methods to [GetAllAdminCategoriesState].
extension GetAllAdminCategoriesStatePatterns on GetAllAdminCategoriesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadinState value)?  loading,TResult Function( SuccessState value)?  success,TResult Function( ErrorState value)?  error,TResult Function( EmptyState value)?  empty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadinState() when loading != null:
return loading(_that);case SuccessState() when success != null:
return success(_that);case ErrorState() when error != null:
return error(_that);case EmptyState() when empty != null:
return empty(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadinState value)  loading,required TResult Function( SuccessState value)  success,required TResult Function( ErrorState value)  error,required TResult Function( EmptyState value)  empty,}){
final _that = this;
switch (_that) {
case LoadinState():
return loading(_that);case SuccessState():
return success(_that);case ErrorState():
return error(_that);case EmptyState():
return empty(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadinState value)?  loading,TResult? Function( SuccessState value)?  success,TResult? Function( ErrorState value)?  error,TResult? Function( EmptyState value)?  empty,}){
final _that = this;
switch (_that) {
case LoadinState() when loading != null:
return loading(_that);case SuccessState() when success != null:
return success(_that);case ErrorState() when error != null:
return error(_that);case EmptyState() when empty != null:
return empty(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( CategoriesGetAllResponse categoriesModel)?  success,TResult Function( String error)?  error,TResult Function()?  empty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadinState() when loading != null:
return loading();case SuccessState() when success != null:
return success(_that.categoriesModel);case ErrorState() when error != null:
return error(_that.error);case EmptyState() when empty != null:
return empty();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( CategoriesGetAllResponse categoriesModel)  success,required TResult Function( String error)  error,required TResult Function()  empty,}) {final _that = this;
switch (_that) {
case LoadinState():
return loading();case SuccessState():
return success(_that.categoriesModel);case ErrorState():
return error(_that.error);case EmptyState():
return empty();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( CategoriesGetAllResponse categoriesModel)?  success,TResult? Function( String error)?  error,TResult? Function()?  empty,}) {final _that = this;
switch (_that) {
case LoadinState() when loading != null:
return loading();case SuccessState() when success != null:
return success(_that.categoriesModel);case ErrorState() when error != null:
return error(_that.error);case EmptyState() when empty != null:
return empty();case _:
  return null;

}
}

}

/// @nodoc


class LoadinState implements GetAllAdminCategoriesState {
  const LoadinState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadinState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllAdminCategoriesState.loading()';
}


}




/// @nodoc


class SuccessState implements GetAllAdminCategoriesState {
  const SuccessState({required this.categoriesModel});
  

 final  CategoriesGetAllResponse categoriesModel;

/// Create a copy of GetAllAdminCategoriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessStateCopyWith<SuccessState> get copyWith => _$SuccessStateCopyWithImpl<SuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessState&&(identical(other.categoriesModel, categoriesModel) || other.categoriesModel == categoriesModel));
}


@override
int get hashCode => Object.hash(runtimeType,categoriesModel);

@override
String toString() {
  return 'GetAllAdminCategoriesState.success(categoriesModel: $categoriesModel)';
}


}

/// @nodoc
abstract mixin class $SuccessStateCopyWith<$Res> implements $GetAllAdminCategoriesStateCopyWith<$Res> {
  factory $SuccessStateCopyWith(SuccessState value, $Res Function(SuccessState) _then) = _$SuccessStateCopyWithImpl;
@useResult
$Res call({
 CategoriesGetAllResponse categoriesModel
});




}
/// @nodoc
class _$SuccessStateCopyWithImpl<$Res>
    implements $SuccessStateCopyWith<$Res> {
  _$SuccessStateCopyWithImpl(this._self, this._then);

  final SuccessState _self;
  final $Res Function(SuccessState) _then;

/// Create a copy of GetAllAdminCategoriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoriesModel = null,}) {
  return _then(SuccessState(
categoriesModel: null == categoriesModel ? _self.categoriesModel : categoriesModel // ignore: cast_nullable_to_non_nullable
as CategoriesGetAllResponse,
  ));
}


}

/// @nodoc


class ErrorState implements GetAllAdminCategoriesState {
  const ErrorState({required this.error});
  

 final  String error;

/// Create a copy of GetAllAdminCategoriesState
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
  return 'GetAllAdminCategoriesState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorStateCopyWith<$Res> implements $GetAllAdminCategoriesStateCopyWith<$Res> {
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

/// Create a copy of GetAllAdminCategoriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorState(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EmptyState implements GetAllAdminCategoriesState {
  const EmptyState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmptyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllAdminCategoriesState.empty()';
}


}




// dart format on
