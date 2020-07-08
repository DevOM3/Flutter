import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  // location for UI
  String location;
  // time at current location
  String time;
  // url of flag of location
  String flag;
  // location url for api url
  String url;
  // checking if it is day or night
  bool isDayTime;

  WorldTime({ this.location, this.flag, this.url });

  // Future is the type which is expected by the await keyword to get return because it waits until the async function is executed completely
  Future<void> getTime() async {
    try {
      // getting response from the given website
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);

      // getting required properties
      String datetime = data['datetime'];
//      String offset_sign = data['utc_offset'].substring(0, 1);
      String offset_hr = data['utc_offset'].substring(0, 3);
      String offset_min = data['utc_offset'].substring(4, 6);

      // creating datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset_hr), minutes: int.parse(offset_min)));
      print(int.parse(offset_hr));
      //checking if it is day or night
      isDayTime = (now.hour > 6 && now.hour < 18) ? true : false;
      //setting time
      time = DateFormat.jm().format(now);
    }
    catch (e){
      time = "Unable to get Time Data";
    }
  }

}
