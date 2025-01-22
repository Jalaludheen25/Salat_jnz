import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salat_al_janaza/screen/SalatalJanazascreen.dart';
import 'package:salat_al_janaza/screen/provider/prayerstepsprovider.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PrayerStepsProvider()),
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SalatAlJanazaScreen(),
    );
  }
}
