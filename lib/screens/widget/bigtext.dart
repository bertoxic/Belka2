import 'package:flutter/material.dart';
import '../../constants/dimensions/dimensionX.dart';


class BigText extends StatelessWidget {
  BigText( this.text,{this.color=const Color(0xff202021),this.size=0,this.overflow});

  Color color;
  String text;
  double size;
  TextOverflow? overflow;//=TextOverflow.ellipsis;


  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle( fontFamily: 'Futura',
          color:color,
          fontSize: size==0?Dimenx.font20:size,
          fontWeight: FontWeight.w500,
          overflow: overflow
      ), maxLines: 1,
    );
  }
}
