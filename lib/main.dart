import 'package:flutter/material.dart';
import 'package:janaza_guide/constants/appkeys.dart';
import 'package:provider/provider.dart';
import 'package:janaza_guide/provider/genderprovider.dart';
import 'package:janaza_guide/screen/splash_screen/splash_screen.dart';
import 'package:janaza_guide/screen/homescreen/home_screen.dart';
import 'package:janaza_guide/widget/force_update.dart';
import 'package:janaza_guide/provider/version_check_provider.dart';
import 'package:janaza_guide/provider/language_provider.dart';

import 'dart:io' show Platform;
import 'package:shake_flutter/shake_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize shake detection
  Shake.start(
          Platform.isAndroid ? Appkeys.androidShakeKey : Appkeys.iosShakeKey)
      .then((_) => debugPrint('📱 Shake detection initialized'));

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GenderProvider()),
        ChangeNotifierProvider(create: (_) => VersionCheckProvider()),
        ChangeNotifierProvider(create: (_) {
          final provider =
              LanguageProvider(); // Initialize language from saved preferences
          Future.microtask(() => provider.initializeLanguage());
          return provider;
        }),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(
      builder: (context, langProvider, child) {
        return MaterialApp(
          title: 'Salat Al Janaza',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.black,
          ),
          home: const AppNavigator(),
          builder: (context, child) {
            return Directionality(
              textDirection:
                  langProvider.isRtl ? TextDirection.rtl : TextDirection.ltr,
              child: child!,
            );
          },
        );
      },
    );
  }
}

class AppNavigator extends StatefulWidget {
  const AppNavigator({super.key});

  @override
  State<AppNavigator> createState() => _AppNavigatorState();
}

class _AppNavigatorState extends State<AppNavigator> {
  bool _showSplash = true;

  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    // Wait for splash screen duration
    await Future.delayed(const Duration(seconds: 2));

    // Check version only if still mounted
    if (!mounted) return;

    final versionProvider =
        Provider.of<VersionCheckProvider>(context, listen: false);
    await versionProvider.checkVersion();

    if (mounted) {
      setState(() {
        _showSplash = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_showSplash) {
      return const SplashScreen();
    }

    return Consumer<VersionCheckProvider>(
      builder: (context, versionProvider, child) {
        if (versionProvider.needsUpdate) {
          return const ForceUpdatePage();
        }
        return const HomeScreen();
      },
    );
  }
}
