import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttergetx/core/constant/route_constant.dart';
import 'package:fluttergetx/feature/home/controller/homeController.dart';
import 'package:get/get.dart';

class HomePageView extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
body: Center(


  child: SizedBox(
    width: 300,
    height: 80,

     child: Column(
       children: [
         const Text("Login Page "),


         ElevatedButton(onPressed: () {
           Get.toNamed(RouteConstant.login);
         },
         child:const Row(
           children: [
             Text("Press to Login to Aonther Page")
           ],
         )
         ),
       ],
     ),

  ),
),
    );
  }
}