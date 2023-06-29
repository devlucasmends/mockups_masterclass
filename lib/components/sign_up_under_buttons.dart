import 'package:flutter/material.dart';

class SignUpButtons extends StatelessWidget {
  final String textButton;
  final String textClick;
  final Color backgroundButtonColor;
  final Color textButtonColor;
  final String? iconButton;

  const SignUpButtons(
      {super.key,
      required this.textButton,
      required this.backgroundButtonColor,
      required this.textButtonColor,
      required this.textClick,
      this.iconButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: InkWell(
        onTap: () => debugPrint(textClick),
        child: Container(
          height: 50,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: backgroundButtonColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (iconButton != null) Image.asset(iconButton!, height: 25),
              if (iconButton != null) const SizedBox(width: 5),
              Text(
                textButton,
                style: TextStyle(
                  color: textButtonColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
