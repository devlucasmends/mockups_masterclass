import 'package:flutter/material.dart';
import 'package:mockups_masterclass8/src/features/tinder_mockup/views/tinder_home_page.dart';
import 'src/features/under_mockup/views/under_home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TinderHomePage(),
    );
  }
}
