import 'package:flutter/material.dart';
import 'package:mycf/shared/themes.dart';
import 'package:mycf/widgets/button_filled.dart';
import 'package:mycf/widgets/layouts/main_login.dart';
import 'package:mycf/widgets/organism/form_signin.dart';

class LoggedUserPage extends StatelessWidget {
  const LoggedUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: blueColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 432, bottom: 56),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 62,
                height: 62,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/avatar1.png'))),
              ),
              const SizedBox(
                height: 13,
              ),
              Text(
                '@ahapsin',
                style: whiteTextStyle.copyWith(fontSize: 24, fontWeight: black),
              ),
              const SizedBox(
                height: 37,
              ),
              SizedBox(
                width: 346,
                child: TextFormField(
                  obscureText: true,
                  style: blackTextStyle.copyWith(fontSize: 24),
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: whiteColor,
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(color: redColor, width: 3)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(color: whiteColor, width: 3)),
                    hintText: "Password",
                    prefixIconColor: grayColor,
                    suffixIconColor: grayColor,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide:
                            BorderSide(color: ligthGrayColor, width: 2)),
                    prefixIcon: Icon(Icons.lock_outlined),
                    suffixIcon: SizedBox(
                        width: 10, child: Icon(Icons.keyboard_return_rounded)),
                  ),
                ),
              ),
              HButtonFilled(
                  title: 'ganti akun',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainLoginPage()));
                  }),
              const Spacer(),
              const Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(color: whiteColor),
                  "PT. BPR Cahaya Fajar Terdaftar dan diawasi\nOtorisasi Jasa Keuangan (OJK) serta \nterjamin Lembaga Penjamin Simpanan (LPS)")
            ],
          ),
        ),
      ),
    );
  }
}
