import 'package:flutter/material.dart';
import 'package:mycf/shared/themes.dart';
import 'package:mycf/ui/visit/form_visit_page.dart';
import 'package:mycf/widgets/item_visit.dart';

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
      backgroundColor: whiteColor,
      body: ListView(
        padding: EdgeInsets.all(14),
        children: [
          HItemVisit(),
          HItemVisit(),
          HItemVisit(),
          HItemVisit(),
          HItemVisit(),
          HItemVisit(),
          HItemVisit(),
          HItemVisit(),
          HItemVisit(),
          HItemVisit(),
        ],
      ),
    );
  }
}
