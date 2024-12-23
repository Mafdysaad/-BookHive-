import 'package:booklyapp/Features/splash/presentation/views/widget/splashbody.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.center,
          colors: [Color(0xFF478DE0), Color(0xFF00BCD4), Color(0xFF6B5FF8)],
        ),
      ),
      child: const Splashbody(),
    ));
  }
}
