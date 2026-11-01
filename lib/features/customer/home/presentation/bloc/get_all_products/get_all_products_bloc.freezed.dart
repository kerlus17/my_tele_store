// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetAllProductsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllProductsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllProductsEvent()';
}


}

/// @nodoc
class $GetAllProductsEventCopyWith<$Res>  {
$GetAllProductsEventCopyWith(GetAllProductsEvent _, $Res Function(GetAllProductsEvent) __);
}


/// Adds pattern-matching-related methods to [GetAllProductsEvent].
extension GetAllProductsEventPatterns on GetAllProductsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( FetchProductssEvent value)?  fetchProducts,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case FetchProductssEvent() when fetchProducts != null:
return fetchProducts(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( FetchProductssEvent value)  fetchProducts,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case FetchProductssEvent():
return fetchProducts(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( FetchProductssEvent value)?  fetchProducts,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case FetchProductssEvent() when fetchProducts != null:
return fetchProducts(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  fetchProducts,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case FetchProductssEvent() when fetchProducts != null:
return fetchProducts();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  fetchProducts,}) {final _that = this;
switch (_that) {
case _Started():
return started();case FetchProductssEvent():
return fetchProducts();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  fetchProducts,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case FetchProductssEvent() when fetchProducts != null:
return fetchProducts();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements GetAllProductsEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllProductsEvent.started()';
}


}




/// @nodoc


class FetchProductssEvent implements GetAllProductsEvent {
  const FetchProductssEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchProductssEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllProductsEvent.fetchProducts()';
}


}




/// @nodoc
mixin _$GetAllProductsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllProductsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllProductsState()';
}


}

/// @nodoc
class $GetAllProductsStateCopyWith<$Res>  {
$GetAllProductsStateCopyWith(GetAllProductsState _, $Res Function(GetAllProductsState) __);
}


/// Adds pattern-matching-related methods to [GetAllProductsState].
extension GetAllProductsStatePatterns on GetAllProductsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadingState value)?  loading,TResult Function( SuccessState value)?  success,TResult Function( EmptyState value)?  empty,TResult Function( ErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadingState() when loading != null:
return loading(_that);case SuccessState() when success != null:
return success(_that);case EmptyState() when empty != null:
return empty(_that);case ErrorState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadingState value)  loading,required TResult Function( SuccessState value)  success,required TResult Function( EmptyState value)  empty,required TResult Function( ErrorState value)  error,}){
final _that = this;
switch (_that) {
case LoadingState():
return loading(_that);case SuccessState():
return success(_that);case EmptyState():
return empty(_that);case ErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadingState value)?  loading,TResult? Function( SuccessState value)?  success,TResult? Function( EmptyState value)?  empty,TResult? Function( ErrorState value)?  error,}){
final _that = this;
switch (_that) {
case LoadingState() when loading != null:
return loading(_that);case SuccessState() when success != null:
return success(_that);case EmptyState() when empty != null:
return empty(_that);case ErrorState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<ProductGetAllModel> productsList)?  success,TResult Function()?  empty,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadingState() when loading != null:
return loading();case SuccessState() when success != null:
return success(_that.productsList);case EmptyState() when empty != null:
return empty();case ErrorState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<ProductGetAllModel> productsList)  success,required TResult Function()  empty,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case LoadingState():
return loading();case SuccessState():
return success(_that.productsList);case EmptyState():
return empty();case ErrorState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<ProductGetAllModel> productsList)?  success,TResult? Function()?  empty,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case LoadingState() when loading != null:
return loading();case SuccessState() when success != null:
return success(_that.productsList);case EmptyState() when empty != null:
return empty();case ErrorState() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class LoadingState implements GetAllProductsState {
  const LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllProductsState.loading()';
}


}




/// @nodoc


class SuccessState implements GetAllProductsState {
  const SuccessState({required final  List<ProductGetAllModel> productsList}): _productsList = productsList;
  

 final  List<ProductGetAllModel> _productsList;
 List<ProductGetAllModel> get productsList {
  if (_productsList is EqualUnmodifiableListView) return _productsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productsList);
}


/// Create a copy of GetAllProductsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessStateCopyWith<SuccessState> get copyWith => _$SuccessStateCopyWithImpl<SuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessState&&const DeepCollectionEquality().equals(other._productsList, _productsList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_productsList));

@override
String toString() {
  return 'GetAllProductsState.success(productsList: $productsList)';
}


}

/// @nodoc
abstract mixin class $SuccessStateCopyWith<$Res> implements $GetAllProductsStateCopyWith<$Res> {
  factory $SuccessStateCopyWith(SuccessState value, $Res Function(SuccessState) _then) = _$SuccessStateCopyWithImpl;
@useResult
$Res call({
 List<ProductGetAllModel> productsList
});




}
/// @nodoc
class _$SuccessStateCopyWithImpl<$Res>
    implements $SuccessStateCopyWith<$Res> {
  _$SuccessStateCopyWithImpl(this._self, this._then);

  final SuccessState _self;
  final $Res Function(SuccessState) _then;

/// Create a copy of GetAllProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productsList = null,}) {
  return _then(SuccessState(
productsList: null == productsList ? _self._productsList : productsList // ignore: cast_nullable_to_non_nullable
as List<ProductGetAllModel>,
  ));
}


}

/// @nodoc


class EmptyState implements GetAllProductsState {
  const EmptyState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmptyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAllProductsState.empty()';
}


}




/// @nodoc


class ErrorState implements GetAllProductsState {
  const ErrorState({required this.error});
  

 final  String error;

/// Create a copy of GetAllProductsState
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
  return 'GetAllProductsState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorStateCopyWith<$Res> implements $GetAllProductsStateCopyWith<$Res> {
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

/// Create a copy of GetAllProductsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorState(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
