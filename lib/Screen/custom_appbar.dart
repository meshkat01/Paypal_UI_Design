
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paypal_ui_design/Screen/welcome_screen.dart';

PreferredSizeWidget CustomAppBar({
String? title,
  List<Widget>? action,
  bool? hideLeading,

}){
  return AppBar(
    backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      leading: hideLeading == true ? null: IconButton(
         onPressed: (){
           Get.to(() => WelcomeScreen(),);
         },
          icon:Icon(Icons.arrow_back,
      color: Colors.black,)),
    title: title != null ? Text(title!,
      style: TextStyle(color: Colors.black),): null,

      actions: action,

  );
}