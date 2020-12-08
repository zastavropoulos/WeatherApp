import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_now/functions/common_functions.dart';

class MainScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Weather now",
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black87,
          child: Column(
            children: [imageContainer(context), searchAndButton(context)],
          ),
        ),
      ),
    );
  }

  Widget imageContainer(BuildContext _context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40.0),
      width: MediaQuery.of(_context).size.width * 0.65,
      height: MediaQuery.of(_context).size.height * 0.3,
      child: Image(
        image: AssetImage('assets/images/logo.png'),
        fit: BoxFit.fill,
      ),
    );
  }

  Widget searchAndButton(BuildContext _context) {
    return Container(
      //color: Colors.red,
      width: double.infinity,
      height: MediaQuery.of(_context).size.height * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [serachBox()],
      ),
    );
  }

  Widget serachBox() {
    return TextField(
      decoration: InputDecoration(hintText: 'City'),
    );
  }
}
