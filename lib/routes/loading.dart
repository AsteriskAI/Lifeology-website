import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

const List<Color> colors = [Colors.white, Colors.purple];

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.popAndPushNamed(context, "/cal");
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(202, 255, 222, 1),
        body: Center(
          child: LoadingIndicator(
            indicatorType: Indicator.ballRotateChase,
            colors: colors,
          ),
        ),
      ),
    );
  }
}
