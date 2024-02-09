import 'package:flutter/material.dart';
import 'package:onboarding_screen/screen/introduction_sceen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screen/home_screen.dart';

bool show = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ?? true;
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboarding Screen',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
    home: IntroScreen(),
    );
  }
}