import 'package:baraeim/assets.dart';
import 'package:baraeim/colors_app.dart';
import 'package:baraeim/healthy_diet_page/presentation/pages/healthy_diet_screen.dart';
import 'package:baraeim/medicines_page/presentation/widgets/card_medicine.dart';
import 'package:flutter/material.dart';

import '../../data/models/all_medicine_diets_model.dart';
import '../../domain/repositories/fetch_medicine_repository.dart';

class MedicinesScreen extends StatefulWidget {
  const MedicinesScreen({super.key});

  @override
  State<MedicinesScreen> createState() => _MedicinesScreenState();
}
List<AllMedicineModel > medicineDetails=[];
fetchData()async{
  FetchAllMedicineRepository fetchAllHealthyDietsRepository=FetchAllMedicineRepository();
  medicineDetails =await fetchAllHealthyDietsRepository.getAllMedicine();


}

class _MedicinesScreenState extends State<MedicinesScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
    setState(() {});
  }
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
                  return CardMedicine(medicine: medicineDetails[index],);
                },
                itemCount: medicineDetails.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
