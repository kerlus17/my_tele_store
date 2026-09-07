import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tele_store/core/serves/shared_pref/pref_keys.dart';
import 'package:tele_store/core/serves/shared_pref/shared_pref.dart';
import 'package:flutter/material.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubitCubit extends Cubit<AppCubitState> {
  AppCubitCubit() : super(const AppCubitState.initial());
static AppCubitCubit get(BuildContext context) => BlocProvider.of<AppCubitCubit>(context);

  bool isDark = true;
  String currentLangCode = 'en';

  Future<void> changeAppThemeMode({bool? sharedMode}) async {
    if (sharedMode != null) {
      isDark = sharedMode;
      emit(AppCubitState.themeChangedmode(isDark: isDark));
    } else {
      isDark = !isDark;
      await SharedPref().setBoolean(prefKeys.themeMode, isDark);
      emit(AppCubitState.themeChangedmode(isDark: isDark));
    }
  }



  void getSavedLanguage() {
    final result = SharedPref().containPreference(prefKeys.language)
        ? SharedPref().getString(prefKeys.language)
        : 'en';

    currentLangCode = result!;

    emit(AppCubitState.languageChange(locale: Locale(currentLangCode)));
  }



  Future<void> _changeLang(String langCode) async {
    await SharedPref().setString(prefKeys.language, langCode);
    currentLangCode = langCode;
    emit(AppCubitState.languageChange(locale: Locale(currentLangCode)));
  }

  void toArabic() => _changeLang('ar');

  void toEnglish() => _changeLang('en');
}
