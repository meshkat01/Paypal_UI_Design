import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_picker/image_picker.dart';

class ProfileSetupController extends GetxController{
File? pickedImage;

Future imagePicker () async{
  try{
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    print('Temp ${image.path}');
    final tempImage = File(image.path);
    pickedImage = tempImage;
     update();
     print(pickedImage!.path);
  }catch(e){
    print('Error is ${e.toString()}');
  }
}
}