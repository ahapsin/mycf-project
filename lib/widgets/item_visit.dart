import 'package:flutter/material.dart';
import 'package:mycf/shared/themes.dart';

class HItemVisit extends StatelessWidget {
  const HItemVisit({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        color: highlightColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: blackColor,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/kunjungan2.png'))),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sarah Siti',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text('Senin. 7.39 PM', style: TextStyle(color: grayColor)),
                ],
              ),
            ],
          ),
          Container(
            width: 20,
            height: 20,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/wa_icon.png'))),
          ),
        ],
      ),
    );
  }
}
