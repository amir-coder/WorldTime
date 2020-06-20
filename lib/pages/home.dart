import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color bkColor;
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    String image = data['isDaytime'] ? 'day.jpg' : 'night.jpg';
    Color bkColor = data['isDaytime'] ? Colors.blue[200] :Colors.indigo[700];
    return Scaffold(
      backgroundColor: bkColor,
      body: SafeArea(
          child:Container(
            decoration: BoxDecoration(
             image: DecorationImage(
               fit: BoxFit.cover,
               image: AssetImage(
                 'assets/$image',
               ),
             ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 120.0,horizontal: 12.0),
              child: Column(
                children: <Widget>[
                  FlatButton.icon(
                      onPressed: () async{
                        dynamic result = await Navigator.pushNamed(context, '/location');
                        setState(() {
                          data = {
                            'location':result['location'],
                            'time':result['time'],
                            'flag': result['flag'],
                            'isDaytime' : result['isDaytime'],
                          };
                        });
                      },
                      icon:Icon(Icons.edit_location) ,
                      label: Text('Edit Location')),
                  SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        data['location'],
                            style: TextStyle(
                              letterSpacing: 2.0,
                              fontSize: 28.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                   data['time'],
                    style: TextStyle(
                      fontSize: 40.0
                    ),
                  ),
                ],
              ),
            ),
          ))
    );
  }
}
