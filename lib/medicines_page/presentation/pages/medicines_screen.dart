import 'package:baraeim/assets.dart';
import 'package:baraeim/colors_app.dart';
import 'package:baraeim/medicines_page/presentation/widgets/card_medicine.dart';
import 'package:flutter/material.dart';

class MedicinesScreen extends StatelessWidget {
  const MedicinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.05),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            TextField(
              controller: controller,
              cursorColor: ColorsApp.primary,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorsApp.textColor,
                ),
                hintText: 'Search',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsApp.textColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsApp.primary,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .72,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {
                  return CardMedicine(title: 'Medicine Name',
                    subtitle: 'Medicine Name',
                    image: Assets.medicine,);
                },
                itemCount: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
