import 'package:flutter/material.dart';
import 'package:fluttergetx/core/constant/get_pages.dart';
import 'package:fluttergetx/core/constant/route_constant.dart';
import 'package:get/get.dart';


   
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
    Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData (
        primarySwatch: Colors.green,
      ),
     title: "Login Page",
      initialRoute: RouteConstant.home,
      getPages: getPages,


    );

  }
}