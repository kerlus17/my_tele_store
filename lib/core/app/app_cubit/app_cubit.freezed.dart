// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppCubitState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppCubitState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppCubitState()';
}


}

/// @nodoc
class $AppCubitStateCopyWith<$Res>  {
$AppCubitStateCopyWith(AppCubitState _, $Res Function(AppCubitState) __);
}


/// Adds pattern-matching-related methods to [AppCubitState].
extension AppCubitStatePatterns on AppCubitState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( ThemeChangedmode value)?  themeChangedmode,TResult Function( LanguageChange value)?  languageChange,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ThemeChangedmode() when themeChangedmode != null:
return themeChangedmode(_that);case LanguageChange() when languageChange != null:
return languageChange(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( ThemeChangedmode value)  themeChangedmode,required TResult Function( LanguageChange value)  languageChange,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ThemeChangedmode():
return themeChangedmode(_that);case LanguageChange():
return languageChange(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( ThemeChangedmode value)?  themeChangedmode,TResult? Function( LanguageChange value)?  languageChange,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ThemeChangedmode() when themeChangedmode != null:
return themeChangedmode(_that);case LanguageChange() when languageChange != null:
return languageChange(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( bool isDark)?  themeChangedmode,TResult Function( Locale locale)?  languageChange,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ThemeChangedmode() when themeChangedmode != null:
return themeChangedmode(_that.isDark);case LanguageChange() when languageChange != null:
return languageChange(_that.locale);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( bool isDark)  themeChangedmode,required TResult Function( Locale locale)  languageChange,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ThemeChangedmode():
return themeChangedmode(_that.isDark);case LanguageChange():
return languageChange(_that.locale);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( bool isDark)?  themeChangedmode,TResult? Function( Locale locale)?  languageChange,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ThemeChangedmode() when themeChangedmode != null:
return themeChangedmode(_that.isDark);case LanguageChange() when languageChange != null:
return languageChange(_that.locale);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AppCubitState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppCubitState.initial()';
}


}




/// @nodoc


class ThemeChangedmode implements AppCubitState {
  const ThemeChangedmode({required this.isDark});
  

 final  bool isDark;

/// Create a copy of AppCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeChangedmodeCopyWith<ThemeChangedmode> get copyWith => _$ThemeChangedmodeCopyWithImpl<ThemeChangedmode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeChangedmode&&(identical(other.isDark, isDark) || other.isDark == isDark));
}


@override
int get hashCode => Object.hash(runtimeType,isDark);

@override
String toString() {
  return 'AppCubitState.themeChangedmode(isDark: $isDark)';
}


}

/// @nodoc
abstract mixin class $ThemeChangedmodeCopyWith<$Res> implements $AppCubitStateCopyWith<$Res> {
  factory $ThemeChangedmodeCopyWith(ThemeChangedmode value, $Res Function(ThemeChangedmode) _then) = _$ThemeChangedmodeCopyWithImpl;
@useResult
$Res call({
 bool isDark
});




}
/// @nodoc
class _$ThemeChangedmodeCopyWithImpl<$Res>
    implements $ThemeChangedmodeCopyWith<$Res> {
  _$ThemeChangedmodeCopyWithImpl(this._self, this._then);

  final ThemeChangedmode _self;
  final $Res Function(ThemeChangedmode) _then;

/// Create a copy of AppCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isDark = null,}) {
  return _then(ThemeChangedmode(
isDark: null == isDark ? _self.isDark : isDark // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class LanguageChange implements AppCubitState {
  const LanguageChange({required this.locale});
  

 final  Locale locale;

/// Create a copy of AppCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageChangeCopyWith<LanguageChange> get copyWith => _$LanguageChangeCopyWithImpl<LanguageChange>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageChange&&(identical(other.locale, locale) || other.locale == locale));
}


@override
int get hashCode => Object.hash(runtimeType,locale);

@override
String toString() {
  return 'AppCubitState.languageChange(locale: $locale)';
}


}

/// @nodoc
abstract mixin class $LanguageChangeCopyWith<$Res> implements $AppCubitStateCopyWith<$Res> {
  factory $LanguageChangeCopyWith(LanguageChange value, $Res Function(LanguageChange) _then) = _$LanguageChangeCopyWithImpl;
@useResult
$Res call({
 Locale locale
});




}
/// @nodoc
class _$LanguageChangeCopyWithImpl<$Res>
    implements $LanguageChangeCopyWith<$Res> {
  _$LanguageChangeCopyWithImpl(this._self, this._then);

  final LanguageChange _self;
  final $Res Function(LanguageChange) _then;

/// Create a copy of AppCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locale = null,}) {
  return _then(LanguageChange(
locale: null == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as Locale,
  ));
}


}

// dart format on
