import 'package:flutter/material.dart';
import 'package:mycf/shared/themes.dart';
import 'package:mycf/ui/visit/visit_page.dart';
import 'package:mycf/widgets/bottom_navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: highlightColor,
      bottomNavigationBar: const HBottomNavbar(),
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 18),
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/bell_icon.png'))),
          )
        ],
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Saldo',
              style: grayTextStyle.copyWith(fontSize: 14),
            ),
            Text(
              'Rp. 100.000',
              style: numberTextStyle.copyWith(fontSize: 14, fontWeight: black),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    width: double.infinity,
                    height: 183,
                    color: blueColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/nfc_icon.png'))),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/cf_circle.png'))),
                            ),
                          ],
                        ),
                        Text(
                          '**** **** *** 0060',
                          style: numberTextStyle.copyWith(
                              fontSize: 24,
                              fontWeight: black,
                              color: whiteColor),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 68,
                    color: overBlueColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 47,
                              height: 47,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/avatar1.png'))),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Muhamad Abu Hapsin',
                              style: whiteTextStyle.copyWith(
                                fontWeight: bold,
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Exp : 11/28',
                          style: numberTextStyle.copyWith(color: whiteColor),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VisitPage()));
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/menu_visit.png'))),
                      ),
                    ),
                    const Text(
                      'Kunjungan',
                      style: TextStyle(
                          color: grayColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/menu_cuti.png'))),
                    ),
                    const Text(
                      'Cuti',
                      style: TextStyle(
                          color: grayColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/menu_kpi.png'))),
                    ),
                    const Text(
                      'Absen',
                      style: TextStyle(
                          color: grayColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/menu_app.png'))),
                    ),
                    const Text(
                      'KPI',
                      style: TextStyle(
                          color: grayColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
