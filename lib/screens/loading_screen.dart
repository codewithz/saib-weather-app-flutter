import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/services/location.dart';
import 'package:http/http.dart';

class LoadingScreen extends StatefulWidget {


  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getLocation() async{
    Location location=Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getHttpData() async{
    var url=Uri.parse('https://localhost:9090/accounts/100100101');
    Response response=await get(url);
    print(response.body);
    print(response.statusCode);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: (){
          getHttpData();
            //Get the current location
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }
}
