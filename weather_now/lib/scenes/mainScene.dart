import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_now/scenes/wheaterScene.dart';

class MainScene extends StatelessWidget {
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
          child: Column(
            children: [imageContainer(context), searchAndButton(context)],
          ),
        ),
      ),
    );
  }

  Widget imageContainer(BuildContext _context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0.0, 20.0, 0, 0.0),
      width: MediaQuery.of(_context).size.width * 0.65,
      height: MediaQuery.of(_context).size.height * 0.3,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/logo2.jpg"),
        ),
      ),
    );
  }

  Widget searchAndButton(BuildContext _context) {
    return Container(
      width: MediaQuery.of(_context).size.width,
      height: MediaQuery.of(_context).size.height * 0.4,
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          serachBox(),
          SizedBox(
            height: 30.0,
          ),
          searchButton(_context)
        ],
      ),
    );
  }

  Widget serachBox() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        filled: true,
        fillColor: Colors.white,
        hintText: 'City',
        hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey[800]),
      ),
    );
  }

  Widget searchButton(BuildContext _context) {
    return RaisedButton(
      color: Colors.black,
      padding: EdgeInsets.symmetric(vertical: 20.0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: Colors.white)),
      onPressed: () {
        Navigator.push(
          _context,
          MaterialPageRoute(builder: (context) => WeatherScene()),
        );
      },
      child: Center(
        child: Text(
          'Search',
          style: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
