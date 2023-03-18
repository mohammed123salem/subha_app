import 'package:flutter/material.dart';
import 'package:subha_app/Screens/LunchScreen.dart';
import 'package:subha_app/Screens/MainScreen.dart';

void main(List<String> args) {
  runApp(const HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LunchScreen(),
      initialRoute: '/Lunch_Screen',
      routes: {
        '/Lunch_Screen': (context) => const LunchScreen(),
        '/Main_Screen': (context) => const MainScreen()
      },
    );
  }
}
