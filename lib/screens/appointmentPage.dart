

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_belka/constants/colors.dart';
import 'package:flutter_belka/screens/activitiesPage.dart';
import 'package:flutter_belka/screens/widget/belkabutton.dart';
import 'package:flutter_belka/screens/widget/bigtext.dart';
import 'package:flutter_belka/constants/dimensions/dimensionX.dart';
import 'package:flutter_belka/screens/widget/smallTxt.dart';

import 'mentorPage.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea( top: true,
      child: Scaffold( floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push((context), MaterialPageRoute(builder: (context)=>ActivitiesPage()));
      },backgroundColor: kPrimary,child: Icon(Icons.add),),
        body: Stack(children: [
          Positioned(
              child: Container(
                color: kPrimary,
              )),  
          Positioned( top: 50, left: 140,
              child: Container( height: 60,
                color: kPrimary,
                child: Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  BigText("My Assignments",color: Colors.grey.shade100,),
                ],),
              )),

          Positioned( top: 100, left: 0,right: 0, bottom: 0,
              child: Container( padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(color: Colors.grey.shade100,borderRadius: BorderRadius.circular(30).copyWith(bottomRight: Radius.circular(0),bottomLeft: Radius.circular(0))),
                child:SingleChildScrollView(child: Column(
                  children: [
                    ListView.builder( itemCount: 10,physics: const NeverScrollableScrollPhysics(),shrinkWrap: true,
                        itemBuilder: (context,index){
                      return Container(decoration: BoxDecoration(color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(30)),
                        margin: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                        padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                        child: Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          Column( crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BigText("Lend-A-Hand Network",size: 18,),
                              Smalltext("You have an appoinyment with your mentor"),
                              Row( crossAxisAlignment: CrossAxisAlignment.end,
                                children: [ Icon(Icons.location_on_outlined,color: Colors.grey.shade400,size: 20,),
                                  SizedBox(width: Dimenx.iconSize18/3,),
                                  Smalltext('Senior Home, KingWest village',size: 14,color: kPrimary,),
                                ],
                              ),

                            ],
                        )],),
                      );
                    })
                  ],
                )),
              )),
        ],),
      ),
    );
  }
}
