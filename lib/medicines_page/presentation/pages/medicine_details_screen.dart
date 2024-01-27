import 'package:baraeim/assets.dart';
import 'package:baraeim/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/header_medicine_datailsscreen.dart';

class MedicineDetailsScreen extends StatelessWidget {
  const MedicineDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      body: Column(
        children: [
          HeaderMedicineDetailsScreen(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Viparita Karani',
                        style:
                            TextStyle(fontSize: 24, color: ColorsApp.primary),
                      ),
                      Icon(Icons.bookmark_border_rounded)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Pregnancy Yoga helps alleviate the effect of common symptoms such as morning sickness, painful leg cramps, swollen ankles, and constipation. Pregnancy Yoga helps alleviate the effect of common symptoms such as morning sickness, painful leg cramps, swollen ankles, and constipation. Pregnancy Yoga helps alleviate the effect of common symptoms such as morning sickness, painful leg cramps, swollen ankles, and constipation.\n \n'*5

                  ,
                    style:
                    const TextStyle(fontSize: 14, color: ColorsApp.subtitleColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
