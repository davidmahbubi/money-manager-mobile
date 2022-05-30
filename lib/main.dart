import 'package:flutter/material.dart';
import 'package:money_manager_mobile/pages/main_page.dart';

void main(List<String> args) => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MainPage(),
    );
  }
}
