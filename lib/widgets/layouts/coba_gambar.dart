import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mycf/shared/themes.dart';

class CobaGambar extends StatelessWidget {
  const CobaGambar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: blueColor,
      body: Container(
        child: Column(
          children: [
            Container(
              child: Row(),
            )
          ],
        ),
      ),
    );
  }
}
