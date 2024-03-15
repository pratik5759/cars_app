import 'package:cars_app/data/cars_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarInfoScreen extends StatelessWidget{

  int carNo,carCategoryIndex;
  CarInfoScreen({required this.carNo,required this.carCategoryIndex});


  @override
  Widget build(BuildContext context) {

    var currentCar = CarData.liCars[carCategoryIndex]["cModels"][carNo];

    return Scaffold(
      appBar: AppBar(
        title: Text(currentCar["carName"]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            child: SizedBox(
              width: double.infinity,
              child: Image.network(currentCar["carImageUrl"],fit: BoxFit.fill,),
            ),
            borderRadius: BorderRadius.circular(18),
          ),
        ],
      ),
    );
  }

}