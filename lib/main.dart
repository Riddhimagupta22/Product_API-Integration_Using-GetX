import 'package:flutter/material.dart';
import 'package:flutter_get/Views/home_page.dart';

import 'package:get/get.dart';

void main (){
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return GetMaterialApp(
       title:  'Flutter Get',
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         scaffoldBackgroundColor: Colors.white,
         appBarTheme: AppBarTheme(
           backgroundColor:Colors.white,
         )
       ),
       home: HomePage(),
     );
   }
 }
