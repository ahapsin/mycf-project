import 'package:flutter/material.dart';
import 'package:mycf/shared/themes.dart';

class CardStyled extends StatelessWidget {
  const CardStyled({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: whiteColor,
          border: Border.all(color: grayColor, style: BorderStyle.solid)),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Jam Masuk',
            style: blackTextStyle.copyWith(fontSize: 14),
          ),
          Text(
            '07:30 pm',
            style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 24),
          ),
          Text(
            '11 Nov 2024',
            style: grayTextStyle.copyWith(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
