import 'package:flutter/material.dart';
import 'package:newchat_app/screens/colors.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'Read Our ',
          style: TextStyle(color: Coloors.greyDark),
          children: [
            TextSpan(
              text: 'Privacy Policy ',
              style: TextStyle(color: Coloors.blueDark),
            ),
            TextSpan(text: 'Tap"Agree and continue" to accept the '),
            TextSpan(
              text: 'Terms Of Services',
              style: TextStyle(color: Coloors.blueDark),
            )
          ],
        ),
      ),
    );
  }
}