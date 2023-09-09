import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final loginFormKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final passController  = TextEditingController();

  RxBool checkVal = false.obs;

  changeCheckBoxValue(value){
    checkVal.value = value;
  }

  validator(){

    if(loginFormKey.currentState!.validate())
    print("$nameController.text");
    print("$passController.text");

  }

}