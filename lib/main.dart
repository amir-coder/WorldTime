

import 'package:flutter/material.dart';
import 'package:worldtime/pages/home.dart';
import 'package:worldtime/pages/loading.dart';
import 'package:worldtime/pages/choose_location.dart';
import 'package:http/http.dart';
import 'package:worldtime/pages/profile.dart';
void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/':(context)=>Loading(),
    '/home':(context)=>Home(),
    '/location':(context)=>ChooseLocation(),
  },
));