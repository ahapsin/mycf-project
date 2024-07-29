import 'package:flutter/material.dart';
import 'package:mycf/shared/themes.dart';

class HTextField extends StatelessWidget {
  final String label;
  final bool withLabel;
  final bool secure;
  final String? placeholder;
  final String? error;
  final Widget? preicon;
  final Widget? suficon;

  const HTextField(
      {super.key,
      this.placeholder,
      required this.label,
      this.error,
      this.preicon,
      this.suficon,
      this.withLabel = true,
      this.secure = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        withLabel
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  label,
                  style: blackTextStyle.copyWith(fontWeight: black),
                ),
              )
            : const SizedBox(),
        TextFormField(
          style: blackTextStyle.copyWith(fontWeight: black),
          decoration: InputDecoration(
              errorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: redColor, width: 3)),
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: overBlueColor, width: 3)),
              hintText: placeholder,
              prefixIconColor: grayColor,
              suffixIconColor: grayColor,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: ligthGrayColor, width: 2)),
              errorText: error,
              prefixIcon: preicon,
              suffixIcon: suficon),
        ),
      ],
    );
  }
}
