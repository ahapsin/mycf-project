import 'package:flutter/material.dart';
import 'package:mycf/shared/themes.dart';
import 'package:mycf/ui/visit/visit_page.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 50, left: 30, bottom: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 25,
                    height: 16,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/back_icon.png'))),
                  ),
                ),
                const Text(
                  'menu',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                GestureDetector(
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/plus_icon.png'))),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
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
                              image: AssetImage('assets/menu_absen.png'))),
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
                              image: AssetImage('assets/menu_kpi.png'))),
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
          ),
        ],
      ),
    );
  }
}
