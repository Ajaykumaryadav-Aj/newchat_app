import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:newchat_app/screens/home_page_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomePageScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Welcome to SandeshApp',
                textStyle: const TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 8, 213, 15),
                ),
                speed: const Duration(milliseconds: 100),
              ),
            ],
            totalRepeatCount: 1,
            pause: const Duration(milliseconds: 100),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
          GradientText(
            'SandeshApp',
            colors: [
              Colors.blue.shade400,
              const Color.fromARGB(255, 3, 150, 57),
              Colors.black
            ],
            style: const TextStyle(fontSize: 40),
          ),
          Image.asset(
            'assets/message icon.png',
            width: 150,
            height: 150,
          ),
        ],
      )),
    );
  }
}
