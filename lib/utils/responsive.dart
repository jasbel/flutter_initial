import 'package:flutter/cupertino.dart';
import 'dart:math' as math;

class Responsive extends StatelessWidget {
  double _width, _height, _diagonal;

  double get width => _width;
  double get height => _height;
  double get diagonal => _diagonal;

  //retorna la instacia de reponsive
  static Responsive of(BuildContext context) => Responsive(context);

  Responsive(BuildContext context) {
    final size = MediaQuery.of(context).size;
    this._width = size.width;
    this._height = size.height;

    //Teorema de pitagoras
    this._diagonal = math.sqrt(math.pow(_width, 2) + math.pow(_height, 2));
  }

  //width, height, diagonal percent
  double wp(double percent) => _width * percent / 100;
  double hp(double percent) => _width * percent / 100;
  double dp(double percent) => _diagonal * percent / 100;
}
