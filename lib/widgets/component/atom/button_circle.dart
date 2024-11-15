import 'package:flutter/material.dart';
import 'package:mycf/shared/themes.dart';

class HButtonCircle extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const HButtonCircle({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: whiteColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(100))),
        ),
        child: Text(
          title,
          style: blackTextStyle.copyWith(fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
