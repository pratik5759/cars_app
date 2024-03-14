import 'package:cars_app/screens/car_types.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text("C A R"),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://i.pinimg.com/originals/b1/3a/81/b13a81281d3d0c822a05b6280b3e7781.jpg")
            )
          ),
        ),
    );
  }
}
