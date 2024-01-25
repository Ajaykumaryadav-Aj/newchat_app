import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:newchat_app/screens/home_page_screen.dart';
import 'package:newchat_app/screens/welcome_page.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  List<MaterialColor> colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
    Colors.green
  ];

  TextStyle colorizeTextStyle = const TextStyle(
    fontSize: 50.0,
    fontFamily: 'Horizon',
  );

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const WelcomePage(),
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
            isRepeatingAnimation: true,
            animatedTexts: [
              ColorizeAnimatedText('Welcome to ',
                  colors: colorizeColors, textStyle: colorizeTextStyle),
              ColorizeAnimatedText(' SandeshApp',
                  colors: colorizeColors, textStyle: colorizeTextStyle),
            ],
            totalRepeatCount: 1,
            pause: const Duration(milliseconds: 200),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
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
