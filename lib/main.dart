import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tele_store/core/app/bloc_observer.dart';
import 'package:tele_store/core/app/env_variables.dart';
import 'package:tele_store/core/di/injection_container.dart';
import 'package:tele_store/core/serves/hive/hive_database.dart';
import 'package:tele_store/core/serves/push_notifications/firebase_claud_messenging.dart';
import 'package:tele_store/core/serves/push_notifications/local_notification.dart';
import 'package:tele_store/core/serves/shared_pref/shared_pref.dart';
import 'package:tele_store/core/utils/deep_links.dart';
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
  initDeepLinks();

  await LocalNotificationService.init();

  if (!kIsWeb) {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  if (!kIsWeb) {
    await FirebaseCloudMessaging.instance.init();
  }
  try {
    await HiveDatabase().setup();
  } catch (e) {
    print('Hive setup error on web: $e');
  }

  runApp(const tele_store());
}
