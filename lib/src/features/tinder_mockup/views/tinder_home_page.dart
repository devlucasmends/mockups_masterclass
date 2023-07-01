import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mockups_masterclass8/src/features/tinder_mockup/components/custom_buttons_tinder.dart';

class TinderHomePage extends StatelessWidget {
  final styleTextUnderline =
      const TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.bold);
  const TinderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(15),
          child: Image.asset(
            'assets/icons/left-arrow.png',
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xffe94976),
                Color(0xffee7462),
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/imgs/tinder-logo.png',
                    height: 125,
                  ),
                  const SizedBox(height: 60),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: const TextStyle(fontSize: 13),
                      children: [
                        const TextSpan(
                          text: 'By tapping Create Account or Sign In, you agree to our',
                        ),
                        TextSpan(
                          text: '\nTerms',
                          style: styleTextUnderline,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              debugPrint('Click Terms');
                            },
                        ),
                        const TextSpan(text: '. Learn how we process your data in our '),
                        TextSpan(
                          text: 'Privacy\nPolicy',
                          style: styleTextUnderline,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              debugPrint('Click Privacy nPolicy');
                            },
                        ),
                        const TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Cookies Policy.',
                          style: styleTextUnderline,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              debugPrint('Click Coockies Policy');
                            },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const CustomButtonsTinder(
                    iconCustomButton: 'assets/icons/apple-logo.png',
                    labelCustomButton: 'SIGN IN WITH APPLE',
                    actionCustomButton: 'Click Apple',
                  ),
                  const SizedBox(height: 10),
                  const CustomButtonsTinder(
                    iconCustomButton: 'assets/icons/facebook-logo.png',
                    labelCustomButton: 'SIGN IN WITH FACEBOOK',
                    actionCustomButton: 'Click Facebook',
                  ),
                  const SizedBox(height: 10),
                  const CustomButtonsTinder(
                    iconCustomButton: 'assets/icons/speech-bubble.png',
                    labelCustomButton: 'SIGN IN WITH PHONE NUMBER',
                    actionCustomButton: 'Click Phone Number',
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () => debugPrint('Click Trouble Signing In'),
                    child: const Text(
                      'Trouble  Signing In?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
