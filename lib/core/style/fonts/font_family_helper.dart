import 'package:tele_store/core/serves/shared_pref/pref_keys.dart';
import 'package:tele_store/core/serves/shared_pref/shared_pref.dart';

class FontFamilyHelper {
  const FontFamilyHelper._();

  static const String cairoArabic = 'cairo';
  static const String poppinsEnglish = 'poppins';

  static String getLocalizedFontFamily() {
    // TODO: SharedPreferences
    final currentLanguage = SharedPref().getString(prefKeys.language);

    if (currentLanguage == 'ar') {
      return 'cairo';
    } else {
      return 'poppins';
    }
  }
}
