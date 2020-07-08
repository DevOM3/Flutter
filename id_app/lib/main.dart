import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: IDCard(),
  ));
}

class IDCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("ID Card"),
        backgroundColor: Colors.grey[900],
        // elevation is used to remove the shadow of appBar
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(21.1, 30.0, 21.1, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // CircleAvatar is used to make a Circular avatar on screen
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.jpg'),
                radius: 75.1,
              ),
            ),
            // Divider is used to add a horizontal line with height distance from x-axis
            Divider(
              height: 21.0,
              color: Colors.grey[600],
            ),
            SizedBox(
              height: 31.1,
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
        // used to give a space as a box
            SizedBox(
              height: 11.1,
            ),
            Text(
              "Om Prashant Londhe",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 4.0,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'MetalMania',
              ),
            ),
            SizedBox(
              height: 31.1,
            ),
            Text(
              "Age",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 11.1,
            ),
            Text(
                "17",
                style: TextStyle(
                color: Colors.amberAccent[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  letterSpacing: 2.0,
                  fontFamily: 'MetalMania',
              ),
            ),
            SizedBox(
              height: 15.1,
            ),
            Divider(
              height: 21.0,
              color: Colors.grey[600],
            ),
            SizedBox(
              height: 15.1,
            ),
            Row(
              children: <Widget>[

                Icon(
                  Icons.email,
                  color: Colors.deepOrange,
                  size: 25.1,
                ),
                SizedBox(
                  width: 21.1,
                ),
                Text(
                  "oplondhe@gmail.com",
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.5,
                    fontSize: 21.1,
                    fontFamily: 'MetalMania',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 21.1,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.lightGreenAccent,
                  size: 31.1,
                ),
                SizedBox(
                  width: 21.1,
                ),
                Text(
                  "+91 7276594467",
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.1,
                    fontSize: 21.1,
                    fontFamily: 'MetalMania',
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

