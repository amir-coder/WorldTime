import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  String location;//location nale for the ui
  String time;//the time in that location
  String flag;//url to an asset flag icon
  String url;//this the location url for
  bool isDaytime; //true if its Daytime and false if else
  WorldTime({this.location,this.flag,this.url});

  Future<void> getTime () async {
    Response responce = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(responce.body);
    print(data);
    //get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);
    //print(offset);
    //create a datetime object
    DateTime now= DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
//    set the time property
    isDaytime = (now.hour >6) &&(now.hour <20) ? true : false;
    time = DateFormat.jm().format(now);
//        isDaytime = true;
//        time = '20:00 PM';
    print(time);
  }
}
WorldTime instence = WorldTime(location: 'Berlin',flag:'germany.png',url:'Europe/Berlin');