import 'package:flutter/material.dart';

class CustomButtonsTinder extends StatelessWidget {
  final String iconCustomButton;
  final String labelCustomButton;
  final String actionCustomButton;
  const CustomButtonsTinder({
    super.key,
    required this.iconCustomButton,
    required this.labelCustomButton,
    required this.actionCustomButton,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => debugPrint(actionCustomButton),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(25)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Image.asset(
                iconCustomButton,
                color: Colors.white,
                height: 25,
              ),
              const Spacer(),
              Text(
                labelCustomButton,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
