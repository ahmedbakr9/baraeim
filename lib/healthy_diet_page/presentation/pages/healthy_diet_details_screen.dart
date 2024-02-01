import 'package:baraeim/healthy_diet_page/presentation/widgets/header_healthy_diet_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../assets.dart';
import '../../../colors_app.dart';
import '../widgets/card_healthy_diet.dart';

class HealthyDietDetailsScreen extends StatelessWidget {
  const HealthyDietDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
List foodDetails=[
  {
    'title':'Colories',
    'mount':'190',
    'countUnit':'kcal',
  },{
    'title':'Fat',
    'mount':'90',
    'countUnit':'g',
  },{
    'title':'Protein',
    'mount':'190',
    'countUnit':'g',
  },{
    'title':'Carbs',
    'mount':'190',
    'countUnit':'g',
  },
];
    return Scaffold(
      backgroundColor: ColorsApp.white,
      body: Column(
        children: [
          HeaderHealthyDietScreen(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Fried Riced with egg Fresh',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Icon(Icons.bookmark_border_rounded)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'This is perfect for the appetizer or which is health benefits.It includes broccoli, cabbage and spinach. ',
                    style: TextStyle(
                        fontSize: 14, color: ColorsApp.subtitleColor),
                  ),
                  SizedBox(height: 26,),
                  Row(
                    children: [
                      Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 15,
                          ),
                          itemBuilder: (context, index) {
                            return  Column(
                              children: [
                                Text(
                                  '${foodDetails[index]['title']}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: ColorsApp.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 4,),
                                Text(
                                  '${foodDetails[index]['mount']} ${foodDetails[index]['countUnit']} ',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: ColorsApp.subtitleColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            );
                          },
                          itemCount: foodDetails.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                        ),
                      ),
                      const Spacer(),
                    ],
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
