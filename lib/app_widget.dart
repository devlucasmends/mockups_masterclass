import 'package:flutter/material.dart';
import 'package:mockups_masterclass8/views/under_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UnderPage(),
    );
  }
}
