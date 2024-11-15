import 'dart:async';

import 'package:flutter/material.dart';

import 'package:mycf/shared/themes.dart';
import 'package:mycf/widgets/layouts/main_login.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const MainLoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: highlightColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/light_logo.png'))),
              ),
            ),
            const Text(
                textAlign: TextAlign.center,
                style: TextStyle(color: grayColor),
                "PT. BPR Cahaya Fajar Terdaftar dan diawasi\nOtorisasi Jasa Keuangan (OJK) serta \nterjamin Lembaga Penjamin Simpanan (LPS)")
          ],
        ),
      ),
    );
  }
}
