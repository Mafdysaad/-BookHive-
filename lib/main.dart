import 'package:booklyapp/core/utils/approutes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Approutes.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
