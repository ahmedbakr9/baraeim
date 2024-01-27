import 'dart:async';

import 'package:baraeim/assets.dart';
import 'package:baraeim/home_page/data/models/sevices_model.dart';
import 'package:baraeim/home_page/presentation/widgets/header_home_screen.dart';
import 'package:baraeim/home_page/presentation/widgets/water_dialog.dart';
import 'package:flutter/material.dart';

import '../../../colors_app.dart';
import '../widgets/card_baby_details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // Future.delayed(Duration(seconds: 10),() {
    //
    // },);
    Timer.periodic(const Duration(hours: 2), (timer) {
             showDialog(
        context: context,
        builder: (context) {
          return const WaterDialog();
        },
      );
    })
    ;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      body: ListView(
        children: [
          const SizedBox(
            height: 80,
          ),
          const HeaderHomeScreen(),
          const SizedBox(height: 40),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Services',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    color: ColorsApp.textColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 112,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 24,
                    ),
                    ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: ServiceModel.service[index].color,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  ServiceModel.service[index].image,
                                  height: 24,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  ServiceModel.service[index].text,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: ColorsApp.white,
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 8,
                          );
                        },
                        itemCount: ServiceModel.service.length),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Health Guidelines',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    color: ColorsApp.textColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Image.asset(
                  Assets.image,
                  height: 160,
                  width: double.infinity,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
