import 'package:flutter/material.dart';
import 'package:mycf/shared/themes.dart';

class HButtonFilled extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const HButtonFilled({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          backgroundColor: blueColor,
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
