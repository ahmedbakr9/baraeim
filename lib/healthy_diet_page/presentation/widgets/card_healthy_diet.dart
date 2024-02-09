import 'package:flutter/material.dart';
import '../../../assets.dart';
import '../../../colors_app.dart';
import '../pages/healthy_diet_details_screen.dart';

class CardHealthyDiet extends StatelessWidget {
  const CardHealthyDiet({super.key, required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) => const HealthyDietDetailsScreen(),));
      },
      child: Container(
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: AssetImage(Assets.blackBackGround),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Expanded(child: Image.asset(image)),
            Text(
              text,
              style: const TextStyle(
                  fontSize: 16,
                  color: ColorsApp.white,
                  fontWeight: FontWeight.w400,

              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
