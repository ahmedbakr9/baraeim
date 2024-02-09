import 'package:baraeim/base_page/presentation/pages/base_page.dart';
import 'package:baraeim/colors_app.dart';
import 'package:baraeim/healthy_diet_page/presentation/pages/healthy_diet_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'growth_test_page/presentation/pages/growth_test_screen.dart';
import 'home_page/presentation/pages/home_screen.dart';

main(){
  runApp(const MyApp());
}









class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        home: BasePage(),
      ),
    );
  }
}
