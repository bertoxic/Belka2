import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/dimensions/dimensions.dart';

class GenderEdit extends StatelessWidget {
   const GenderEdit({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container( margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20).copyWith(top: 100),
         child:GestureDetector( onTap: (){

         },
           child: Container( height: 60,
             padding: EdgeInsets.symmetric(horizontal: Dimensions.width20,vertical: Dimensions.height20),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(8),
                 border: Border.all(color: kDgrey,width: 2)
             ),
             child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children:  [
                 Text('Female'),
                 SizedBox(width: Dimensions.width20,),
                 Icon(Icons.arrow_drop_down_sharp),
               ],
             ),),
         ) ,
       ),

     );
   }
 }
