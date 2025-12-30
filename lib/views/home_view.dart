import 'package:flutter/material.dart';
import 'package:flutter_learn/views/calculator_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Learn',

      home: SafeArea(
        child: Scaffold(
          body: Container(color: Colors.deepOrange, child: CalculatorView()),
        ),
      ),
    );
  }
}
