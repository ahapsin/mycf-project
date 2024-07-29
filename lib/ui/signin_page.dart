import 'package:flutter/material.dart';
import 'package:mycf/shared/themes.dart';
import 'package:mycf/ui/home_page.dart';
import 'package:mycf/widgets/button_filled.dart';
import 'package:mycf/widgets/text_field.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: highlightColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const SizedBox(
              height: 65,
            ),
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/light_logo.png'))),
            ),
            const SizedBox(
              height: 82,
            ),
            Text(
              'Welcome!',
              style: blackTextStyle.copyWith(fontSize: 24, fontWeight: black),
            ),
            Text(
              'Welcome login here to access your account!',
              style: blackTextStyle.copyWith(fontSize: 14),
            ),
            const SizedBox(
              height: 50,
            ),
            const HTextField(
              withLabel: false,
              label: 'Username',
              placeholder: 'Username',
              preicon: Icon(Icons.account_circle_rounded),
            ),
            const SizedBox(
              height: 16,
            ),
            const HTextField(
              withLabel: false,
              label: 'Password',
              placeholder: 'Password',
              secure: true,
              preicon: Icon(Icons.key),
              suficon: Icon(Icons.remove_red_eye_outlined),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Lupa Password ?',
              style: blueTextStyle.copyWith(fontWeight: black),
            ),
            const SizedBox(
              height: 24,
            ),
            HButtonFilled(
              title: 'Login',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
