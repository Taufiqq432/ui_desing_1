

import 'package:flutter/material.dart';
import 'package:ui_design/font_page.dart';
import 'package:ui_design/sign_up.dart';
import 'package:ui_design/profile_page.dart';
import 'package:ui_design/test.dart';


void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      initialRoute: '/font_page',
    routes: {
      '/font_page': (context) => Loginpage(),
      '/sign_up' :(context)=>Signup(),
      '/profile_page':(context)=>Profile(),
      //'/test' :(context)=>Test()
    },

  ));
}