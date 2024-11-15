import 'package:flutter/material.dart';
import 'package:mycf/shared/themes.dart';
import 'package:mycf/ui/home_page.dart';
import 'package:mycf/widgets/button_filled.dart';

import 'package:mycf/widgets/text_field.dart';

class FormSignin extends StatelessWidget {
  const FormSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 188,
                margin: EdgeInsets.only(top: 50),
                height: 42,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/light_logo.png'))),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          const HTextField(
            withLabel: false,
            label: 'Username',
            placeholder: 'Username',
            preicon: Icon(Icons.account_circle_rounded),
          ),
          const SizedBox(
            height: 32,
          ),
          HTextField(
            withLabel: false,
            label: 'Password',
            placeholder: 'Password',
            secure: true,
            preicon: Icon(Icons.key),
            suficon: TextButton(
                onPressed: () {}, child: Icon(Icons.remove_red_eye_outlined)),
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
    );
  }
}
