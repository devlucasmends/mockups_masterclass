import 'package:flutter/material.dart';
import 'package:mockups_masterclass8/components/under_logo.dart';

class UnderPage extends StatelessWidget {
  const UnderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.black,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UnderLogo(),
            ],
          ),
        ),
      ),
    );
  }
}
