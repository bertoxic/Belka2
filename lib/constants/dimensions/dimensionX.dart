import 'dart:ui';

class  Dimenx{

  static double pixelRatio = window.devicePixelRatio;

  //Size in physical pixels
  var physicalScreenSize = window.physicalSize;
  static double physicalWidth= window.physicalSize.width;
  static double physicalHeight= window.physicalSize.height;

//Size in logical pixels
  var logicalScreenSize = window.physicalSize / pixelRatio;
  static double screenWidth = window.physicalSize.width / pixelRatio;
  static double screenHeight = window.physicalSize.height / pixelRatio;

//Padding in physical pixels
  var padding = window.padding;

//Safe area paddings in logical pixels
  var paddingLeft = window.padding.left / window.devicePixelRatio;
  var paddingRight = window.padding.right / window.devicePixelRatio;
  var paddingTop = window.padding.top / window.devicePixelRatio;
  var paddingBottom = window.padding.bottom / window.devicePixelRatio;

  static double pageView = screenHeight / 2.85;
  static double pageViewContainer = screenHeight / 4.145;
  static double pageViewTextContainer = screenHeight / 7.6;
//height for margin and padding
  static double height10 = screenHeight / 91.2;
  static double height15 = screenHeight / 60.8;
  static double height20 = screenHeight / 45.6;
  static double height30 = screenHeight / 30.4;
  static double height45 = screenHeight / 20.26;
  static double height100 = screenHeight / 9.12;

  // width for padding and margin
  static double width10 = screenWidth / 43;
  static double width15 = screenWidth / 28.6;
  static double width20 = screenWidth / 21.5;
  static double width30 = screenWidth / 14.3;

  static double iconSize18 = screenWidth / 24;

  static double font20 = screenHeight / 45.6;
  static double font26 = screenHeight / 35.6;

  static double radius10 = screenHeight / 91.2;
  static double radius20 = screenHeight / 45.6;
  static double radius30 = screenHeight / 30.4;

}















class DimensionX {
  static double pixelRatio= window.devicePixelRatio;
  var screenSize= window.physicalSize;
  static double physicalWidth= window.physicalSize.width;
  static double physicalHeight= window.physicalSize.height;


  static double height10 = physicalWidth / 91.2/pixelRatio;
  static double height15 = physicalHeight / 60.8;
  static double height20 = physicalHeight / 45.6;
  static double height30 = physicalHeight / 30.4;
  static double height45 = physicalHeight / 20.26;
  static double height100 = physicalHeight / 9.12;

}