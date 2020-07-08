import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    // we receive Navigator arguments here
    // so we are getting all those parameters here in Map data
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;

    // setting background
    String img = data['isDayTime'] ? 'day.jpg' : 'night.jpg';

    return Scaffold(
      body: SafeArea(
        child: Container(
          // using boxdecoration widget
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$img'),
              // fit property determines how the image should fit
              fit: BoxFit.cover,
            )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 121.1, 0.0, 0.0),
            child: Column(
              children: <Widget>[
                FlatButton.icon(
                    onPressed: () async {
                      // Navigator is used to navigate between screens, here we have used pushNamed() function to specify the map key value
                      dynamic result = await Navigator.pushNamed(context, '/location');
                      setState(() {
                        data = {
                          'time': result['time'],
                          'location': result['location'],
                          'isDayTime': result['isDayTime'],
                          'flag': result['flag'],
                        };
                      });
                      },
                    icon: Icon(
                      Icons.edit_location,
                      color: data['isDayTime'] ? Colors.black87 : Colors.white,
                    ),
                    label: Text(
                      "Change Location",
                      style: TextStyle(
                        color: data['isDayTime'] ? Colors.black87 : Colors.white,
                      ),
                    )
                ),
                SizedBox(
                  height: 21.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 31.1,
                        letterSpacing: 2.0,
                        color: data['isDayTime'] ? Colors.black87 : Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 21.1,
                ),
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 71.1,
                    color: data['isDayTime'] ? Colors.black87 : Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

