import "package:cars_app/data/cars_data.dart";
import "package:cars_app/screens/car_info_screen.dart";
import "package:flutter/material.dart";

class CarListScreen extends StatelessWidget{
  var carCategoryIndex,carIndex;
  CarListScreen({required this.carCategoryIndex});

  @override
  Widget build(BuildContext context) {

    var carList = CarData.liCars[carCategoryIndex]["cModels"];

    return Scaffold(
      appBar: AppBar(
        title: Text("Car List"),
      ),
      body: ListView.builder(

      itemCount: carList.length,
      itemBuilder: (context, index) {
        /*print("one");
        print(carList[index]["carName"]);*/

        return carListElement(index, context, carList);
      },),
    );
  }

  InkWell carListElement(int index, BuildContext context, carList) {
    return InkWell(
        onTap: (){
          carIndex=index;
          Navigator.push(context, MaterialPageRoute(builder: (context) => CarInfoScreen(carNo: carIndex, carCategoryIndex: carCategoryIndex),));
        },
        child: ListTile(
          hoverColor: Colors.grey,
          title: Text(carList[index]["carName"]),
          leading: CircleAvatar(backgroundImage: NetworkImage(carList[index]["carImageUrl"]),),
        ),
      );
  }

}