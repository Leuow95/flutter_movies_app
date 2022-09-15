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
        // useMaterial3: true,
        primaryColor: const Color(0xff212121),
        primaryColorLight: const Color(0xff484848),
        primaryColorDark: const Color(0xff000000),
        primarySwatch: Colors.deepOrange,
        secondaryHeaderColor: const Color(0xffff5722),
        primaryTextTheme: const TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      initialRoute: "/home_page",
      routes: {
        "/home_page": (context) => const HomePage(),
      },
    );
  }
}
