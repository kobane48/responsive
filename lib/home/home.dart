
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../responsive/responsive.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
  
    var scrennnSize = MediaQuery.of(context);
    MyResponsive _myResponsive = MyResponsive(screenSize: scrennnSize);
    double size = _myResponsive.getSize(scrennnSize.size.width);

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive'),
      ),
      body: Center(
        child: Container(
          width: size * 0.45,
          height: size * 0.40,
          color: Colors.black,
          child: Center(
            child: Text(
              'Shahrazad',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: size * 0.07,
              ),
            ),
          ),
        ),
      ),
    );
  }
}