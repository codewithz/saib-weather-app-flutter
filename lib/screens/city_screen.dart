import 'package:flutter/material.dart';
import 'package:weather_app/utilities/constants.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover
          )
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: FlatButton(
                  onPressed: (){},
                  child: Icon(
                    Icons.arrow_back_ios,
                    size:50
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                  child: null,
              ),
              FlatButton(
                  onPressed:(){},
                  child: Text(
                    'Get Weather',
                    style: kButtonTextStyle,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
