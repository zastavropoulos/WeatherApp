import 'package:flutter/material.dart';

class WeatherScene extends StatelessWidget {
  final String _temp = '30',
      _maxTemp = '35',
      _minTemp = '28',
      _feelsLike = '36',
      _pressure = '1023',
      _humidity = '10',
      _windSpeed = '1.5',
      _city = 'Athens';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weather now",
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter,
                    colors: [
                      Colors.grey.withOpacity(0.0),
                      Colors.black,
                    ],
                    stops: [0.0, 1.0],
                  ),
                ),
              ),
              Column(children: [
                cityInfo(context),
                tempInfo(context),
                moreInfo(context)
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget cityInfo(BuildContext _context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(_context).size.height * 0.2,
      child: Center(
          child: Text(
        '$_city',
        style: TextStyle(
            color: Colors.white, fontSize: 75.0, fontWeight: FontWeight.bold),
      )),
    );
  }

  Widget tempInfo(BuildContext _context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
      width: double.infinity,
      height: MediaQuery.of(_context).size.height * 0.31,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [showTempValues(), feelsLikeValue()],
      ),
    );
  }

  Widget showTempValues() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [showMinValue(), showCurrentValue(), showMaxValue()],
    );
  }

  Widget showMinValue() {
    return Column(
      children: [
        Text(
          '$_minTemp',
          style: TextStyle(fontSize: 40.0, color: Colors.white),
        ),
        Text(
          'Min',
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }

  Widget showCurrentValue() {
    return Column(
      children: [
        Text(
          '$_temp',
          style: TextStyle(
              fontSize: 60.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          'Current',
          style: TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget showMaxValue() {
    return Column(
      children: [
        Text(
          '$_maxTemp',
          style: TextStyle(fontSize: 40.0, color: Colors.white),
        ),
        Text(
          'Max',
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }

  Widget feelsLikeValue() {
    return Container(
      padding: EdgeInsets.fromLTRB(0.0, 40.0, 0, 0.0),
      child: Text(
        'Feels like: $_feelsLike',
        style: TextStyle(color: Colors.white, fontSize: 15.0),
      ),
    );
  }

  Widget moreInfo(BuildContext _context) {
    return Container(
      //color: Colors.white,
      width: double.infinity,
      height: MediaQuery.of(_context).size.height * 0.25,
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          Text(
            "More info",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          showMoreInfo(),
        ],
      ),
    );
  }

  Widget showMoreInfo() {
    return Column(
      children: [
        Text("Pressure: $_pressure",
            style: TextStyle(color: Colors.white, fontSize: 20.0)),
        Text("Humidity: $_humidity",
            style: TextStyle(color: Colors.white, fontSize: 20.0)),
        Text("Wind speed: $_windSpeed",
            style: TextStyle(color: Colors.white, fontSize: 20.0)),
      ],
    );
  }
}
