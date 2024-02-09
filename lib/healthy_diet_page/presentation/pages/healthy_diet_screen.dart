import 'package:baraeim/assets.dart';
import 'package:baraeim/colors_app.dart';
import 'package:flutter/material.dart';

import '../widgets/card_healthy_diet.dart';

class HealthyDietScreen extends StatelessWidget {
  const HealthyDietScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back,color: ColorsApp.black,),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'A Healthy Diet',
          style: TextStyle(
            color: ColorsApp.textColor,
            fontSize: 15,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(34.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .8,
            crossAxisSpacing: 20,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            return const CardHealthyDiet(image: Assets.foodImage,text: 'Fried Riced with egg Fresh',);
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
