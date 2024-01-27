import 'package:baraeim/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../assets.dart';
import '../pages/medicine_details_screen.dart';

class CardMedicine extends StatelessWidget {
  const CardMedicine({super.key, required this.title, required this.subtitle, required this.image});
final String title;
final String subtitle;
final String image;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) => MedicineDetailsScreen(),));
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          // boxShadow: [BoxShadow(color: Colors.grey,spreadRadius: 5,blurRadius: 20)],
            color: ColorsApp.white,borderRadius: BorderRadius.circular(20)


        ),
        child: Column(children: [
          Expanded(

            child: Image.asset(image,fit: BoxFit.cover,width: double.infinity,),flex: 4,),
           Expanded(flex: 2,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(title,style: TextStyle(fontSize: 15,color: ColorsApp.textColor),),
                  Text(subtitle,style: TextStyle(fontSize: 13,overflow: TextOverflow.ellipsis),maxLines: 1,),
                ],
              ),
            ),
          )
        ],),
      ),
    );;
  }
}
