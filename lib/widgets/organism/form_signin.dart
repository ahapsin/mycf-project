import 'package:flutter/material.dart';
import 'package:mycf/shared/themes.dart';
import 'package:mycf/ui/logged_user_page.dart';
import 'package:mycf/widgets/button_filled.dart';
import 'package:mycf/widgets/navigation_rail_extend.dart';
import 'package:mycf/widgets/text_field.dart';

class FormSignin extends StatelessWidget {
  const FormSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 65,
          ),
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/light_logo.png'))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'BPR CAHAYA FAJAR!',
                  style:
                      blueTextStyle.copyWith(fontSize: 24, fontWeight: black),
                ),
              ),
            ],
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
            style: grayTextStyle.copyWith(fontSize: 14),
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LoggedUserPage()));
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
