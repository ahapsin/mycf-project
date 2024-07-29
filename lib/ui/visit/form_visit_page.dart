import 'package:flutter/material.dart';
import 'package:mycf/shared/themes.dart';
import 'package:mycf/widgets/button_filled.dart';
import 'package:mycf/widgets/text_field.dart';

class FormVisitPage extends StatelessWidget {
  const FormVisitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Form Kunjungan',
          style: blackTextStyle.copyWith(fontSize: 14, fontWeight: black),
        ),
        centerTitle: true,
      ),
      backgroundColor: whiteColor,
      body: ListView(
        padding: EdgeInsets.all(14),
        children: [
          HTextField(label: 'Tanggal Kunjungan'),
          HTextField(label: 'Nama Nasabah'),
          HTextField(label: 'No Handphone'),
          HTextField(label: 'Alamat'),
          HTextField(label: 'RT'),
          HTextField(label: 'RW'),
          SizedBox(
            height: 20,
          ),
          HButtonFilled(title: 'Simpan')
        ],
      ),
    );
  }
}
