import 'package:flutter/material.dart';
import 'package:janaza_guide/constants/appkeys.dart';
import 'package:provider/provider.dart';
import 'package:janaza_guide/provider/genderprovider.dart';
import 'package:janaza_guide/screen/splash_screen/splash_screen.dart';
import 'package:janaza_guide/provider/version_check_provider.dart';

import 'dart:io' show Platform;

import 'package:shake_flutter/shake_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize shake detection
  Shake.start(Platform.isAndroid
      ? Appkeys.androidShakeKey
      : Appkeys.iosShakeKey)
      .then((_) => debugPrint('📱 Shake detection initialized'));

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GenderProvider()),
        ChangeNotifierProvider(create: (_) => VersionCheckProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salat Al Janaza',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const SplashScreen(),
    );
  }
}