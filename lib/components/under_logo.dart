import 'package:flutter/material.dart';

class UnderLogo extends StatelessWidget {
  final colorLogo = const Color(0xff5e5ce5);
  const UnderLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: colorLogo,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(height: 5),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: colorLogo,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50)),
              ),
            ),
          ],
        ),
        const SizedBox(width: 5),
        Container(
          height: 105,
          width: 50,
          decoration: BoxDecoration(
            color: colorLogo,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50), topRight: Radius.circular(50)),
          ),
        )
      ],
    );
  }
}
