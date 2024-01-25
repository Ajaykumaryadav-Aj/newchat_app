import 'package:flutter/material.dart';
import 'package:newchat_app/screens/colors.dart';
import 'package:newchat_app/screens/custome_elevated_button.dart';
import 'package:newchat_app/screens/home_page_screen.dart';
import 'package:newchat_app/screens/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Coloors.backgroundDark,
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 10,
                  ),
                  child: Image.asset(
                    'assets/welcome page image.png',
                    // color: Coloors.greenDark,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Welcome To Sandesh',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const PrivacyAndTerms(),
                CustomElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePageScreen(),
                        ));
                  },
                  text: 'AGREE AND CONTINUE',
                ),
                const SizedBox(
                  height: 50,
                ),
                Material(
                  color: const Color(0xff182229),
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(20),
                      splashFactory: NoSplash.splashFactory,
                      highlightColor: const Color(0xff09141a),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.language,
                              color: Coloors.greenDark,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'English',
                              style: TextStyle(color: Coloors.greenDark),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Coloors.greenDark,
                            ),
                          ],
                        ),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
