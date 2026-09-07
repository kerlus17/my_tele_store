part of 'app_cubit.dart';

@freezed
class AppCubitState with _$AppCubitState {
  const factory AppCubitState.initial() = _Initial;
  const factory AppCubitState.themeChangedmode({required bool isDark}) =
      ThemeChangedmode;

 const factory AppCubitState.languageChange({required Locale locale}) =
      LanguageChange;
}
