import 'package:cars_app/screens/car_types_screen.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/custom_textfeild.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text("C A R"),
      ),

      /// main container
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg_car.jpg"),
                fit: BoxFit.fill)),
        child: Center(
          child: Container(
            height: 450,
            width: 320,
            decoration: BoxDecoration(
                color: Colors.white54, borderRadius: BorderRadius.circular(15)),

            ///main column
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextFeild(
                  hint: "User Name",
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextFeild(hint: "Password"),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CarTypesScreen(),));
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                      child: const Text(
                        "Log in",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
