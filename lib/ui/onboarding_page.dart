import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mycf/shared/themes.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;

  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Membaca dan Menganalisis Data',
    'Notifikasi setiap peristiwa',
  ];

  List<String> subtitles = [
    "Menghabiskan waktu untuk memahami informasi yang disajikan dalam laporan, seperti angka, grafik, atau narasi yang menjelaskan kejadian dan hasil secara realtime.",
    "Notifikasi real-time dikirimkan dengan segera setelah peristiwa atau aktivitas terjadi. Ini memungkinkan pengguna untuk mendapatkan informasi secara cepat tanpa harus secara aktif memantau atau mencari update.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Text(
              titles[currentIndex],
              style: whiteTextStyle.copyWith(
                  fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              enableInfiniteScroll: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            items: [
              Image.asset('assets/onboard1.png'),
              Image.asset('assets/onboard2.png'),
            ],
            carouselController: carouselController,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: currentIndex == 0 ? blueColor : grayColor,
                            borderRadius: BorderRadius.circular(20)),
                        width: currentIndex == 0 ? 30 : 10,
                        height: 10,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: currentIndex == 1 ? blueColor : grayColor,
                            borderRadius: BorderRadius.circular(20)),
                        width: currentIndex == 1 ? 30 : 10,
                        height: 10,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        titles[currentIndex],
                        style: blackTextStyle.copyWith(
                            fontSize: 24, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        subtitles[currentIndex],
                        style: grayTextStyle.copyWith(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
