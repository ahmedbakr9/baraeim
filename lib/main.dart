import 'package:baraeim/base_page/presentation/pages/base_page.dart';
import 'package:flutter/material.dart';

import 'home_page/presentation/pages/home_screen.dart';

main(){
  runApp(const MyApp());
}









class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BasePage(),
      ),
    );
  }
}
