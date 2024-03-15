import 'package:cars_app/data/cars_data.dart';
import 'package:cars_app/screens/car_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CarTypesScreen extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CAR CATEGORIES"),
      ),
      body: GridView.builder(
        itemCount: CarData.liCars.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 14/16,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        itemBuilder: (BuildContext context, int index) {
          Map<String, dynamic> car = CarData.liCars[index];

          return carImageGrid(context, index);


        },
      ),
    );
  }





  InkWell carImageGrid(BuildContext context, int index) {
    return InkWell(
          onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => CarListScreen(carCategoryIndex: index),));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                Image.network(
                  CarData.liCars[index]['cCategoryImageUrl'],
                  fit: BoxFit.fitHeight,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Positioned(
                  top: 15,
                  left: 15,
                  child: Text(
                    CarData.liCars[index]["cCategory"],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      backgroundColor: Colors.black12
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
  }
}
