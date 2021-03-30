import 'package:flutter/material.dart';
import 'package:flutter_initial/utils/responsive.dart';
import 'package:flutter_initial/widgets/circle.dart';
import 'package:flutter_initial/widgets/icon_container.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final Size size = MediaQuery.of(context).size;

    final double pinkSize = size.width * 0.8;
    final double orangeSize = size.width * 0.55;

    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: -(pinkSize) * 0.4,
                  right: -(pinkSize) * 0.1,
                  child: Circle(
                    size: pinkSize,
                    colors: [Colors.pinkAccent, Colors.pink],
                  )),
              Positioned(
                  top: -(orangeSize) * 0.5,
                  left: -(orangeSize) * 0.15,
                  child: Circle(
                    size: orangeSize,
                    colors: [Colors.orange, Colors.deepOrangeAccent],
                  )),
              Positioned(
                top: pinkSize * 0.40,
                child: Column(
                  children: <Widget>[
                    IconContainer(
                      size: size.width * 0.15,
                    ),
                    Text(
                      "Hello Again \n Wecome back",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
