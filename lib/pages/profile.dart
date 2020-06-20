import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:worldtime/pages/home.dart';
import 'package:worldtime/pages/loading.dart';
import 'package:worldtime/pages/choose_location.dart';
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Club Scientifique de l ESI',
                style: TextStyle(
                  fontSize: 20.0
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
        body:Scaffold(
          body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/night.jpg'),
                    fit: BoxFit.cover,
                  ),
//                      backgroundBlendMode: BlendMode.saturation,
//                color: Colors.white
              ),

              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Divider(
                      height: 0.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal:0.0),
                      child: Text(
                        'USER PROFILE:',
                        style: TextStyle(
                          color: Colors.amber,
                          letterSpacing: 2.0,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Center(
                      child: Card(
                        color: Colors.grey[900],
                        child: Card(
                          elevation: 50.0,
                          color: Colors.blueGrey[800],
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10.0,5.0,10.0,5.0),
                            child: Column(
                              children: <Widget>[
                                 CircleAvatar(
                                    backgroundImage: AssetImage('assets/profilePic.jpg'),
                                    radius: 100.0,
                                  ),
                                    SizedBox(height: 5.0,),
                                    Text(
                                'Almamma Amir',
                             style:TextStyle(
                               fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.black,
                              letterSpacing: 2.0,
                               fontSize: 20.0,

                             ),
                                    ),
                                SizedBox(height: 10.0,),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(

                    ),
                      ],
                    ),
                  ),
              )
          ),

      ),
    );
  }
}
