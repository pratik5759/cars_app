import 'package:cars_app/data/cars_data.dart';
import 'package:flutter/material.dart';

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
            childAspectRatio: 16 / 9,
            mainAxisSpacing: 10,
            crossAxisSpacing: 5),
        itemBuilder: (BuildContext context, int index) {
          Map<String, dynamic> car = CarData.liCars[index];

          return ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                Image.network(
                  CarData.liCars[index]['cCategoryImageUrl'],
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
                Center(
                  child: Text(
                    CarData.liCars[index]["cCategory"],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
