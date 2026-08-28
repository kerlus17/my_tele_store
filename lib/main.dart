import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tele_store/core/app/env_variables.dart';
import 'package:tele_store/firebase_options.dart';
import 'package:tele_store/tele_store.dart';

void main() async {

  
  WidgetsFlutterBinding.ensureInitialized();
  await EnvVariable.instance.init(envType: EnvTypeEnum.dev);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await SystemChrome.setPreferredOrientations(
  [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]).then((_) {
  runApp(const tele_store());
});

 
  runApp(const tele_store());
}
