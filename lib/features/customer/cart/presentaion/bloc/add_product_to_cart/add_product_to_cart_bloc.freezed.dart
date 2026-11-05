// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_product_to_cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddProductToCartEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddProductToCartEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddProductToCartEvent()';
}


}

/// @nodoc
class $AddProductToCartEventCopyWith<$Res>  {
$AddProductToCartEventCopyWith(AddProductToCartEvent _, $Res Function(AddProductToCartEvent) __);
}


/// Adds pattern-matching-related methods to [AddProductToCartEvent].
extension AddProductToCartEventPatterns on AddProductToCartEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( AddNewProductCartEvent value)?  addProduct,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case AddNewProductCartEvent() when addProduct != null:
return addProduct(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( AddNewProductCartEvent value)  addProduct,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case AddNewProductCartEvent():
return addProduct(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( AddNewProductCartEvent value)?  addProduct,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case AddNewProductCartEvent() when addProduct != null:
return addProduct(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( ProductGetAllModel product,  int quantity,  int productId)?  addProduct,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case AddNewProductCartEvent() when addProduct != null:
return addProduct(_that.product,_that.quantity,_that.productId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( ProductGetAllModel product,  int quantity,  int productId)  addProduct,}) {final _that = this;
switch (_that) {
case _Started():
return started();case AddNewProductCartEvent():
return addProduct(_that.product,_that.quantity,_that.productId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( ProductGetAllModel product,  int quantity,  int productId)?  addProduct,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case AddNewProductCartEvent() when addProduct != null:
return addProduct(_that.product,_that.quantity,_that.productId);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AddProductToCartEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddProductToCartEvent.started()';
}


}




/// @nodoc


class AddNewProductCartEvent implements AddProductToCartEvent {
  const AddNewProductCartEvent({required this.product, required this.quantity, required this.productId});
  

 final  ProductGetAllModel product;
 final  int quantity;
 final  int productId;

/// Create a copy of AddProductToCartEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNewProductCartEventCopyWith<AddNewProductCartEvent> get copyWith => _$AddNewProductCartEventCopyWithImpl<AddNewProductCartEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNewProductCartEvent&&(identical(other.product, product) || other.product == product)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,product,quantity,productId);

@override
String toString() {
  return 'AddProductToCartEvent.addProduct(product: $product, quantity: $quantity, productId: $productId)';
}


}

/// @nodoc
abstract mixin class $AddNewProductCartEventCopyWith<$Res> implements $AddProductToCartEventCopyWith<$Res> {
  factory $AddNewProductCartEventCopyWith(AddNewProductCartEvent value, $Res Function(AddNewProductCartEvent) _then) = _$AddNewProductCartEventCopyWithImpl;
@useResult
$Res call({
 ProductGetAllModel product, int quantity, int productId
});




}
/// @nodoc
class _$AddNewProductCartEventCopyWithImpl<$Res>
    implements $AddNewProductCartEventCopyWith<$Res> {
  _$AddNewProductCartEventCopyWithImpl(this._self, this._then);

  final AddNewProductCartEvent _self;
  final $Res Function(AddNewProductCartEvent) _then;

/// Create a copy of AddProductToCartEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? product = null,Object? quantity = null,Object? productId = null,}) {
  return _then(AddNewProductCartEvent(
product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductGetAllModel,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$AddProductToCartState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddProductToCartState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddProductToCartState()';
}


}

/// @nodoc
class $AddProductToCartStateCopyWith<$Res>  {
$AddProductToCartStateCopyWith(AddProductToCartState _, $Res Function(AddProductToCartState) __);
}


/// Adds pattern-matching-related methods to [AddProductToCartState].
extension AddProductToCartStatePatterns on AddProductToCartState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( LoadingState value)?  loading,TResult Function( SuccessState value)?  success,TResult Function( ErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingState() when loading != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( LoadingState value)  loading,required TResult Function( SuccessState value)  success,required TResult Function( ErrorState value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case LoadingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( LoadingState value)?  loading,TResult? Function( SuccessState value)?  success,TResult? Function( ErrorState value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case LoadingState() when loading != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( int indexId)?  loading,TResult Function()?  success,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingState() when loading != null:
return loading(_that.indexId);case SuccessState() when success != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( int indexId)  loading,required TResult Function()  success,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case LoadingState():
return loading(_that.indexId);case SuccessState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( int indexId)?  loading,TResult? Function()?  success,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case LoadingState() when loading != null:
return loading(_that.indexId);case SuccessState() when success != null:
return success();case ErrorState() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AddProductToCartState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddProductToCartState.initial()';
}


}




/// @nodoc


class LoadingState implements AddProductToCartState {
  const LoadingState({required this.indexId});
  

 final  int indexId;

/// Create a copy of AddProductToCartState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingStateCopyWith<LoadingState> get copyWith => _$LoadingStateCopyWithImpl<LoadingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingState&&(identical(other.indexId, indexId) || other.indexId == indexId));
}


@override
int get hashCode => Object.hash(runtimeType,indexId);

@override
String toString() {
  return 'AddProductToCartState.loading(indexId: $indexId)';
}


}

/// @nodoc
abstract mixin class $LoadingStateCopyWith<$Res> implements $AddProductToCartStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(LoadingState value, $Res Function(LoadingState) _then) = _$LoadingStateCopyWithImpl;
@useResult
$Res call({
 int indexId
});




}
/// @nodoc
class _$LoadingStateCopyWithImpl<$Res>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(this._self, this._then);

  final LoadingState _self;
  final $Res Function(LoadingState) _then;

/// Create a copy of AddProductToCartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? indexId = null,}) {
  return _then(LoadingState(
indexId: null == indexId ? _self.indexId : indexId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SuccessState implements AddProductToCartState {
  const SuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddProductToCartState.success()';
}


}




/// @nodoc


class ErrorState implements AddProductToCartState {
  const ErrorState({required this.error});
  

 final  String error;

/// Create a copy of AddProductToCartState
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
  return 'AddProductToCartState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorStateCopyWith<$Res> implements $AddProductToCartStateCopyWith<$Res> {
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

/// Create a copy of AddProductToCartState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ErrorState(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
