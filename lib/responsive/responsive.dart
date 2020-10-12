import 'package:flutter/cupertino.dart';

class MyResponsive{
  MediaQueryData screenSize;
  MyResponsive({
    this.screenSize
  });

  double getSize(double widthSize){
    Orientation orientation = screenSize.orientation;
    if( orientation == Orientation.landscape){
      widthSize = screenSize.size.height;
    }else{
      widthSize = screenSize.size.width;
    }
    if(widthSize >= 600){
      return widthSize / 1.5;
    }else{
      return widthSize;
    }
  }
}