

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_belka/constants/colors.dart';
import 'package:flutter_belka/screens/widget/belkabutton.dart';
import 'package:flutter_belka/screens/widget/bigtext.dart';
import 'package:flutter_belka/constants/dimensions/dimensionX.dart';
import 'package:flutter_belka/screens/widget/smallTxt.dart';

import 'mentorPage.dart';

class TutorPage extends StatefulWidget {
  const TutorPage({Key? key}) : super(key: key);

  @override
  State<TutorPage> createState() => _TutorPageState();
}

class _TutorPageState extends State<TutorPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea( top: true,
      child: Scaffold(
        body: Stack(children: [
          Positioned(
              child: Container(
            color: kPrimary,
          )),
          Positioned(top: Dimenx.height20,left: 0, right: 0,
              child: Container(padding: EdgeInsets.symmetric(horizontal: Dimenx.height10),
            child: Container( height: Dimenx.height30*10, width: Dimenx.width30*10,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/model (14).jpg'),fit: BoxFit.fitWidth)),
              child: Text("h"),),
          )),
          Positioned( top: 300, left: 0,right: 0, bottom: 0,
              child: Container( padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(color: Colors.grey.shade100,borderRadius: BorderRadius.circular(20).copyWith(bottomRight: Radius.circular(0),bottomLeft: Radius.circular(0))),
                child: Column(  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(tag: 'subject1',
                    child: BigText('Mathematics')),
                    SizedBox(width: Dimenx.iconSize18/3,),
                    Smalltext(' 1hr 35 mins left',size: 16,),
                    SizedBox(height: Dimenx.height10,),
                    BigText('Details'),
                    SizedBox(height: Dimenx.height10,),
                    Container(height: Dimenx.height100, width: double.infinity, padding: EdgeInsets.symmetric(horizontal: Dimenx.height10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey.shade300)),
                      child: Smalltext("text"),),
                    SizedBox(height: Dimenx.height10,),
                    BigText('Today\'s Topic'),
                    SizedBox(height: Dimenx.height10,),
                    Container(height: Dimenx.height100, width: double.infinity, padding: EdgeInsets.symmetric(horizontal: Dimenx.height10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Smalltext("1. Algebra and problems with detailed solutions"),
                          Smalltext("2. equation and problems with detailed solutions"),
                        ],
                      ),),
                    SizedBox(height: Dimenx.height10,),
                    BigText('Assignment'),
                    SizedBox(height: Dimenx.height10,),
                    Card(child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container( padding:  EdgeInsets.all(Dimenx.height10),
                          child: Row(children: [
                            const Icon(Icons.book,color: kPrimary,),
                            SizedBox(width: Dimenx.height10,),
                            Smalltext('Document File',size: 16,),
                          ],),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.cloud_download,color: kPrimary,),
                        )
                      ],
                    ),),
                    SizedBox(height: Dimenx.height15,),
                    BelkaButton(text: 'Submit Assignment',function: (){
                      Navigator.push((context), MaterialPageRoute(builder: (context)=>MentorPage()));
                    },)

                  ],
                ),
              )),
        ],),
      ),
    );
  }
}
