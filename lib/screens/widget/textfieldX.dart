import '../../constants/colors.dart';
import '../../constants/dimensions/dimensionX.dart';
import 'package:flutter/material.dart';

import 'bigtext.dart';

class TextFieldX extends StatelessWidget {
  String? field;
  String? hinttxt;
  IconData? prefixIcon;
  IconData? suffixIcon;
  String Function(String?)? validator;
  TextEditingController? controller;
  TextFieldX({
    this.validator,
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.field,
    this.hinttxt,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( padding: EdgeInsets.only(bottom: Dimenx.height30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(field??"",size: Dimenx.iconSize18,),
          SizedBox(height: Dimenx.width15,),
          TextFormField(
            controller: controller,
            validator: validator,
            decoration: InputDecoration( contentPadding: EdgeInsets.symmetric(vertical: 1,horizontal: Dimenx.width10),
              focusColor: Colors.red, focusedBorder:  OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(
                  color: kPrimary,
                ),
              ),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),),
              hintText: hinttxt,
              prefixIcon: prefixIcon!=null?Icon(prefixIcon,color: Colors.grey,):null,
              suffixIcon: suffixIcon!=null?Icon(suffixIcon,color: Colors.grey,):null,//null//Icon(Icons.drive_file_rename_outline,color: Colors.grey,),


            ),

          )
        ],),);
  }
}
