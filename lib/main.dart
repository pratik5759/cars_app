import 'package:cars_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main(){

  runApp(CarApp());
}

class CarApp extends StatelessWidget{

  @override
  Widget build(context){
    return MaterialApp(
      title: "Car details",
      home: HomePage(),
    );
  }
}