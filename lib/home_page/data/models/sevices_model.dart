import 'package:baraeim/assets.dart';
import 'package:baraeim/colors_app.dart';
import 'package:flutter/material.dart';

class ServiceModel {
  final String image;
  final String text;
  final Color color;

  ServiceModel({
    required this.text,
    required this.image,
    required this.color,
  });
 static List<ServiceModel> service=[
    ServiceModel(text: 'Daily Exercise', image: Assets.exerciseIcon, color: ColorsApp.primary,),
    ServiceModel(text: 'Drugs Influencing Pregnancy', image: Assets.drugsImage, color: ColorsApp.indio,),
    ServiceModel(text: 'A Healthy Diet', image: Assets.foodImage, color: ColorsApp.green,),
    ServiceModel(text: 'Modern parenting', image: Assets.stepsIcon, color: ColorsApp.orange,),
  ];
}
