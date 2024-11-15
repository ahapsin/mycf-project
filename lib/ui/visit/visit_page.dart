import 'package:flutter/material.dart';
import 'package:mycf/shared/themes.dart';
import 'package:mycf/ui/visit/form_visit_page.dart';
import 'package:mycf/widgets/bottom_navbar.dart';
import 'package:mycf/widgets/component/organism/list.dart';

class VisitPage extends StatelessWidget {
  const VisitPage({super.key});

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
          'Kunjungan',
          style: blackTextStyle.copyWith(fontSize: 14, fontWeight: black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FormVisitPage())),
          ),
        ],
        centerTitle: true,
      ),
      bottomNavigationBar: HBottomNavbar(),
      backgroundColor: whiteColor,
      body: ListStyled(),
    );
  }
}
