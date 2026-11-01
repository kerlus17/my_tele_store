import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'; // مهم جداً للتحقق من الويب kIsWeb
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tele_store/core/app/bloc_observer.dart';
import 'package:tele_store/core/app/env_variables.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/core/serves/hive/hive_database.dart';
import 'package:tele_store/core/serves/push_notifications/firebase_claud_messenging.dart';
import 'package:tele_store/core/serves/shared_pref/shared_pref.dart';
import 'package:tele_store/firebase_options.dart';
import 'package:tele_store/tele_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Bloc.observer = AppBlocObserver();
  await SharedPref().instantiatePreferences();

  await setupInjection();

  // تدوير الشاشة يعمل على الهواتف فقط، ولا داعي له على المتصفح
  if (!kIsWeb) {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  // إشعارات الـ FCM تعمل بشكل أساسي على الموبايل (أو تحتاج تهيئة ويب خاصة)
  if (!kIsWeb) {
    await FirebaseCloudMessaging.instance.init();
  }

  // تهيئة Hive (لو ملف الـ setup لا يدعم الويب تلقائياً، يفضل عزله أو التأكد من إعداده)
  try {
    await HiveDatabase().setup();
  } catch (e) {
    print('Hive setup error on web: $e');
  }

  runApp(const tele_store());
}
