import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mockups_masterclass8/src/features/under_mockup/components/custom_buttons_under.dart';
import 'package:mockups_masterclass8/src/features/under_mockup/components/under_logo.dart';

class UnderPage extends StatelessWidget {
  const UnderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const UnderLogo(),
                const SizedBox(height: 45),
                const Text(
                  'Get your Money\nUnder Control',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Manage your expenses\nSeamlessly.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff79797d),
                    fontSize: 21,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 80),
                const CustomButtonsUnder(
                  textButton: 'Sign Up with Email ID',
                  backgroundButtonColor: Color(0xff5e5ce5),
                  textButtonColor: Color(0xffe1e1ff),
                  textClick: 'Click Sign Up Email',
                ),
                const SizedBox(height: 15),
                const CustomButtonsUnder(
                  textButton: 'Sign Up with Google',
                  backgroundButtonColor: Color(0xffebebeb),
                  textButtonColor: Color(0xff3a3a3a),
                  iconButton: 'assets/icons/icon-google.png',
                  textClick: 'Click Sign Up Google',
                ),
                const SizedBox(height: 40),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    children: [
                      const TextSpan(text: 'Already have an account? '),
                      TextSpan(
                        text: 'Sign In',
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                          decorationThickness: 1.5,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => debugPrint("Click in Sign In"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
