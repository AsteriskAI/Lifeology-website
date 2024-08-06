import 'package:flutter/material.dart';
import 'package:lifeology/routes/cal.dart';
import 'package:lifeology/routes/loading.dart';
import 'package:lifeology/routes/loginpage.dart';
import 'package:lifeology/routes/mainpage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, fontFamily: 'PTSerif'),
      home: const MainPage(),
      initialRoute: "/landing",
      routes: {
        "/landing": (context) => const MainPage(),
        "/login": (context) => const Login(),
        "/loading": (context) => const Loading(),
        "/cal": (context) => const Cal()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
