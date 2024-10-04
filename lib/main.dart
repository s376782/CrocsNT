import 'package:flutter/material.dart';
import 'package:crocsnt/home.dart';

void main() => runApp(const Application());

class Application extends StatelessWidget {
  const Application({super.key});

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        return MaterialPageRoute(builder: (context) => const Home());
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'CrocsNT',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        onGenerateRoute: generateRoute,
        initialRoute: "",
      );
}
