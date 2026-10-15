// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainState()';
}


}

/// @nodoc
class $MainStateCopyWith<$Res>  {
$MainStateCopyWith(MainState _, $Res Function(MainState) __);
}


/// Adds pattern-matching-related methods to [MainState].
extension MainStatePatterns on MainState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( BarSelectedIconState value)?  barSelectedIcon,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case BarSelectedIconState() when barSelectedIcon != null:
return barSelectedIcon(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( BarSelectedIconState value)  barSelectedIcon,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case BarSelectedIconState():
return barSelectedIcon(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( BarSelectedIconState value)?  barSelectedIcon,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case BarSelectedIconState() when barSelectedIcon != null:
return barSelectedIcon(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( NavBarEnum navBarenum)?  barSelectedIcon,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case BarSelectedIconState() when barSelectedIcon != null:
return barSelectedIcon(_that.navBarenum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( NavBarEnum navBarenum)  barSelectedIcon,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case BarSelectedIconState():
return barSelectedIcon(_that.navBarenum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( NavBarEnum navBarenum)?  barSelectedIcon,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case BarSelectedIconState() when barSelectedIcon != null:
return barSelectedIcon(_that.navBarenum);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements MainState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MainState.initial()';
}


}




/// @nodoc


class BarSelectedIconState implements MainState {
  const BarSelectedIconState({required this.navBarenum});
  

 final  NavBarEnum navBarenum;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BarSelectedIconStateCopyWith<BarSelectedIconState> get copyWith => _$BarSelectedIconStateCopyWithImpl<BarSelectedIconState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BarSelectedIconState&&(identical(other.navBarenum, navBarenum) || other.navBarenum == navBarenum));
}


@override
int get hashCode => Object.hash(runtimeType,navBarenum);

@override
String toString() {
  return 'MainState.barSelectedIcon(navBarenum: $navBarenum)';
}


}

/// @nodoc
abstract mixin class $BarSelectedIconStateCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory $BarSelectedIconStateCopyWith(BarSelectedIconState value, $Res Function(BarSelectedIconState) _then) = _$BarSelectedIconStateCopyWithImpl;
@useResult
$Res call({
 NavBarEnum navBarenum
});




}
/// @nodoc
class _$BarSelectedIconStateCopyWithImpl<$Res>
    implements $BarSelectedIconStateCopyWith<$Res> {
  _$BarSelectedIconStateCopyWithImpl(this._self, this._then);

  final BarSelectedIconState _self;
  final $Res Function(BarSelectedIconState) _then;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? navBarenum = null,}) {
  return _then(BarSelectedIconState(
navBarenum: null == navBarenum ? _self.navBarenum : navBarenum // ignore: cast_nullable_to_non_nullable
as NavBarEnum,
  ));
}


}

// dart format on
