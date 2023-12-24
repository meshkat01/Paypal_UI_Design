import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paypal_ui_design/Screen/rigester_screen.dart';

import '../global_widget/custom_button.dart';
import '../global_widget/custom_input_field.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("images/paypal.png", height: 80.0,),

             Column(
               children: [
                 const CustomInputField(title: "Enter Your Email",),
                 const SizedBox(height: 10.0,),
                 const CustomInputField(title: "Enter your Password", secqured: true,),
                 const SizedBox(height: 10.0,),
                 const CustomButton(title: "Log in",),
               ],
             ),
             Column(
                children: [
                  Text("Having Travale Loging in?",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RigesterScreen()));
                  }, child: Text("Sign Up")),
                ],

             ),
            ],
          ),
        ),
      ),
    );
  }
}
