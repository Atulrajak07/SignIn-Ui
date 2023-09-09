
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../controller/logincontroller.dart';

class LoginPageView extends GetView<LoginController>{
  const LoginPageView({super.key});




  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
       body:Form(
         key: controller.loginFormKey,
     autovalidateMode: AutovalidateMode.onUserInteraction,
         child: Center(
           child: SingleChildScrollView(
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 width: 400,
                 height: 550,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.white10,
                   boxShadow: const [
                     BoxShadow(
                       color: Color.fromARGB(255, 201, 204, 202),
                       offset: Offset(
                         5.0,
                         5.0,
                       ),
                       blurRadius: 10.0,
                       spreadRadius: 2.0,
                     ),
                     BoxShadow(
                       color: Colors.white,
                       offset: Offset(0.0,0.0),
                       blurRadius: 0.0,
                       spreadRadius: 0.0,
                     ),
                   ],
                 ),
                 child: Container(
                   margin: const EdgeInsets.all(15),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [

                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                   const Padding(
                   padding: EdgeInsets.fromLTRB(5, 12, 30, 10),
                   child: Text('Sign In',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: Colors.green,
                       fontSize: 18,
                       fontWeight: FontWeight.w900,
                     ),
                   ),
                 ),
                 Container(
                   margin: const EdgeInsets.fromLTRB(5, 12, 30, 10),
                   width: 40,
                   height: 35,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.green[100],),
                   child: const Icon(Icons.document_scanner_sharp,
                     size: 25,
                     color: Colors.green,
                   ),
                 ),
                 ]
                       ),


                       Column(

                         children: [
                           Container(
                             margin: const EdgeInsets.only(bottom: 22),
                             child: TextFormField(
                               controller: controller.nameController,
                               obscureText: false,
                               decoration: const InputDecoration(
                                 labelText: "Email ID/ Phone Number ",
                                 border:OutlineInputBorder(),
                               ),
                               validator: (value) {
                                 if (value == null || value.isEmpty) {
                                   return 'Enter the Valid Email Or Phone no.';
                                 }
                                 return null;
                               },
                             ),
                           ),

                           Container(
                             margin: const EdgeInsets.only(bottom: 22),
                             child: TextFormField(
                               controller: controller.passController,
                               obscureText: true,
                               decoration: const InputDecoration(
                                 labelText: "  Password",
                                 border:OutlineInputBorder(),
                               ),
                               validator: (value) {
                                 if (value == null || value.isEmpty) {
                                   return 'Enter Correct Password ';
                                 }
                                 return null;
                               },
                             ),
                           ),

                           Row(

                             children: [
                               const Padding(padding:EdgeInsets.fromLTRB(0, 12, 0, 12)),


                               Obx(()=> Checkbox(value:controller.checkVal.value,
                                   onChanged: (value) {
                                     controller.changeCheckBoxValue(value);
                                   }

                               )),
                               const Text("agree"),
                             ],

                           ),






                           ElevatedButton(
                             child: const Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Padding(
                                   padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                                   child: (
                                       Text("Sign In",
                                         style: TextStyle(
                                           fontWeight: FontWeight.bold,
                                         ),
                                       )
                                   ),
                                 ),
                               ],
                             ),
                             onPressed: (){

                               controller.validator();

                             },
                           ),
                           const Padding(
                             padding: EdgeInsets.fromLTRB(30, 12, 30, 10),
                             child: Text('OR',
                               textAlign: TextAlign.center,
                               style: TextStyle(
                                 color: Colors.grey,
                                 fontWeight: FontWeight.w600,
                               ),
                             ),
                           ),
                           ElevatedButton(
                             onPressed: (){
                             },

                             style: ButtonStyle(
                               backgroundColor: const MaterialStatePropertyAll(Colors.white),
                               shape:MaterialStatePropertyAll(RoundedRectangleBorder(side: const BorderSide(color: Colors.green,width: 1,style: BorderStyle.solid),borderRadius: BorderRadius.circular(5),
                               ),

                               ),


                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
                                   child: Row(children: [
                                     Image.asset('assets/google.jpg',
                                       width: 30,
                                     ),
                                     const Text(' Login with Google',
                                       style:TextStyle(
                                         color: Colors.green,
                                         fontWeight: FontWeight.w900,
                                       ),
                                     ),
                                   ]),
                                 ),
                               ],
                             ),

                           ),
                           const Padding(
                             padding: EdgeInsets.fromLTRB(30, 12, 30, 10),
                             child: Text('By Signig in you agree to our Terms & Conditions & Privacy Policy',
                               textAlign: TextAlign.center,
                               style: TextStyle(
                                 fontWeight: FontWeight.w600,
                               ),
                             ),

                           ),

                         ],
                       ),
                       const Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('Company not registered? Sign Up'),
                         ],
                       ),
                     ],
                   ),
                 ),

               ),
             ),
           ),
         ),

       ) ,
    );
  }

}

