import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:worldtime/services/world_time.dart';
import 'package:worldtime/pages/choose_location.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {



void setupWorldTime() async{

  print('setuoWorldTime is runnig');
  WorldTime instence = WorldTime(location: 'Berlin',flag:'germany.png',url:'Europe/Berlin');
  await instence.getTime();
  print('we got the time');
  Navigator.pushReplacementNamed(context, '/home',arguments: {
    'location':instence.location,
    'time':instence.time,
    'flag': instence.flag,
    'isDaytime' : instence.isDaytime,
  });
}

  @override
  void initState(){
    super.initState();
    print('initState is runnig');
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body:Center(
        child: SpinKitFoldingCube(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );

  }
}
