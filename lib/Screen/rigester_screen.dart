import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paypal_ui_design/Screen/custom_appbar.dart';
import 'package:paypal_ui_design/Screen/setup_screen.dart';
import 'package:paypal_ui_design/Screen/welcome_screen.dart';

import '../global_widget/custom_button.dart';
import '../global_widget/custom_input_field.dart';
class RigesterScreen extends StatelessWidget {
  const RigesterScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(
        hideLeading: false,
      ),
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
                  const SizedBox(height: 15.0,),
                  const CustomInputField(title: "Enter your Password", secqured: true,),
                  const SizedBox(height: 15.0,),
                  CustomButton(title: "Sign Up",
                  onTap: () => Get.to(SetupScreen())),
                ],
              ),
              Column(
                children: [
                  Text("Alredy have an account?",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: const Text("Log in")),
                ],

              ),
            ],
          ),
        ),
      ),
    );
  }
}
