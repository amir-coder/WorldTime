import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';


class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  List <WorldTime> locations = [
    WorldTime(location: 'London',flag: 'uk.png',url: 'Europe/London'),
  WorldTime(location: 'Athens',flag: 'greece.png',url: 'Europe/Berlin'),
  WorldTime(location: 'Cairo',flag: 'egybt.png',url: 'Africa/Cairo'),
  WorldTime(location: 'Nairobi',flag: 'kenya.png',url: 'Africa/Nairobi'),
  WorldTime(location: 'Chicago',flag: 'usa.png',url: 'America/Chicago'),
  WorldTime(location: 'New York',flag: 'usa.png',url: 'America/New_York'),
  WorldTime(location: 'Seoul',flag: 'south_korea.png',url: 'Asia/Seoul'),
  WorldTime(location: 'Jakata',flag: 'indonesia.png',url: 'Asia/Jakarta'),

  ] ;


  void updateTime(index) async{
    WorldTime instence = locations[index];
    await instence.getTime();
    //navigate to home screen
    Navigator.pop(context,{
      'location':instence.location,
      'time':instence.time,
      'flag': instence.flag,
      'isDaytime' : instence.isDaytime,
    });
  }
  @override

  Widget build(BuildContext context) {
    print('build function run');
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text('CHOOSE LOCATION'),
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
                onTap: (){
                  updateTime(index);
                },
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/${locations[index].flag}'),
              ),
              title: Text(locations[index].location),
              ),
            );
          },
      )
          );


  }
}