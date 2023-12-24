import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paypal_ui_design/Screen/custom_appbar.dart';
import 'package:paypal_ui_design/global_widget/custom_button.dart';
import 'package:paypal_ui_design/global_widget/custom_input_field.dart';

import '../controller/profile_setup_controller.dart';
import 'home_screen.dart';
class SetupScreen extends StatelessWidget {
   SetupScreen({super.key});
final controller = Get.put(ProfileSetupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Complete Setup",
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Stack(
                   alignment: Alignment.bottomRight,
                   children: [
                     controller.pickedImage == null ? const CircleAvatar(
                       radius: 60.0,
                       backgroundImage: NetworkImage(
                           'https://media.licdn.com/dms/image/C5603AQE8GyUureWseA/profile-displayphoto-shrink_800_800/0/1631338108354?e=2147483647&v=beta&t=ditTxWyUGh2c6Roq0X1LJsxpO7E-tO2F3ftzTCB6SJ4'

                       ),
                     ) : CircleAvatar(
                       radius: 60.0,
                       backgroundImage: FileImage(controller.pickedImage!),
                     ),
                     InkWell(
                       onTap: () => controller.imagePicker(),
                       child: Container(
                         height: 30.0,
                         width: 30.0,
                         decoration: BoxDecoration(
                           color: Colors.blueAccent,
                           shape: BoxShape.circle,
                           border: Border.all(
                             width: 2.0,
                             color: Colors.white,
                           ),
                         ),
                         child: Icon(Icons.edit,
                           size: 20.0,
                           color: Colors.white,
                         ),
                       ),
                     ),
                   ],
                 ),
                 SizedBox(height: 30.0,),
                 CustomInputField(title: "Your Full Name"),
                 SizedBox(height: 20.0,),
                 CustomInputField(title: "Your Phone Number"),
                 SizedBox(height: 20.0,),
                 CustomInputField(title: "Your NID Number"),
               ],
             ),
              SizedBox(height: 20.0,),
              CustomButton(title: "Complete Setup",
              onTap: ()=> Get.to(() => const HomeScreen()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
