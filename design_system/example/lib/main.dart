import 'package:example/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.grey[900],
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: "/home_page",
      routes: {
        "/home_page": (context) => const HomePage(),
      },
    );
  }
}
