import 'package:flutter/material.dart';
import 'package:mycf/ui/onboarding_page.dart';

import 'package:mycf/widgets/organism/form_signin.dart';

class MainLoginPage extends StatelessWidget {
  const MainLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (MediaQuery.of(context).size.width > 600) {
            return GridView.count(
              crossAxisCount: 2,
              children: [
                Container(
                  child: FormSignin(),
                ),
                Container(padding: EdgeInsets.all(20), child: OnBoardingPage()),
              ],
            );
          } else {
            return Container(
              padding: EdgeInsets.all(25),
              child: FormSignin(),
            );
          }
        },
      ),
    );
  }
}
