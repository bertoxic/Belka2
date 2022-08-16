import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_belka/constants/colors.dart';
import 'package:flutter_belka/screens/tutorPage.dart';
import 'package:flutter_belka/screens/widget/bigtext.dart';
import 'package:flutter_belka/screens/widget/mytextform.dart';
import 'package:flutter_belka/constants/dimensions/dimensionX.dart';
import 'package:flutter_belka/screens/widget/smallTxt.dart';

class MyPrograms extends StatefulWidget {
  const MyPrograms({Key? key}) : super(key: key);

  @override
  State<MyPrograms> createState() => _MyProgramsState();
}

class _MyProgramsState extends State<MyPrograms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.format_line_spacing_outlined,
              color: kPrimary,
            ),
            BigText(
              'Programs',
              color: kPrimary,
            ),
            Icon(
              Icons.notifications,
              color: kPrimary,
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.grey.shade100,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimenx.width15),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Dimenx.height20),
              MyCustomTextField(
                hintText: "Search for Program",
                icon: Icons.search,
              ),
              SizedBox(height: Dimenx.height20),
              Container(
                child: Stack(
                  children: [
                    Positioned(
                        child: Container(
                      height: Dimenx.height10 * 21,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          image: DecorationImage(
                              image: AssetImage("assets/images/model (26).jpg"),
                              fit: BoxFit.fitWidth),
                          borderRadius: BorderRadius.circular(12)),
                    )),
                    Positioned(
                        child: Container(
                      height: Dimenx.height10 * 21,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(12)),
                    )),
                    Positioned(
                        left: Dimenx.width15,
                        top: Dimenx.height10*8,
                        child: SizedBox(
                          width: Dimenx.width20*10, //color: Colors.red,
                          child: Column( //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align( alignment: Alignment.centerLeft,
                                child: BigText(
                                  "The beautiful Bird Place story",overflow: TextOverflow.ellipsis,
                                  color: Colors.grey.shade100,
                                ),
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Smalltext(
                                    'the very first of its kind what do you think about it',
                                    color: Colors.grey.shade300,
                                  ))
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(height: Dimenx.iconSize18,),
              BigText("My Programs",color: kPrimary,),
              SizedBox(height: Dimenx.iconSize18,),
              ListView.builder( itemCount: 7, physics: NeverScrollableScrollPhysics(), shrinkWrap: true,
                  itemBuilder: (context, index){

                return GestureDetector( onTap: (){
                  Navigator.push((context), MaterialPageRoute(builder: (context)=> TutorPage()));
                },
                  child: Container( height: 120, padding: EdgeInsets.symmetric(vertical: Dimenx.height10,horizontal:Dimenx.width10, ), margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.grey.shade300)),
                    child: Row(
                      children: [
                        Container( width: 100, height: 100,
                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/model (23).jpg'),fit: BoxFit.cover),
                            borderRadius:  BorderRadius.circular(Dimenx.width10/2),
                            color: Colors.red
                          ),
                          child:const Text(''),
                        ),SizedBox(width: Dimenx.iconSize18,),
                        Column( crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ 
                          Hero(tag: "subject$index",
                          child: BigText("Mathematics",size: 18,color: kBlack,)),
                          Row( crossAxisAlignment: CrossAxisAlignment.end,
                            children: [ Icon(Icons.timelapse,color: Colors.grey.shade400,),
                              SizedBox(width: Dimenx.iconSize18/3,),
                              Smalltext('Monday 6th august 2021',size: 16,),
                            ],
                          ),
                            SizedBox(width: Dimenx.iconSize18/3,),
                            Smalltext(' 1hr 35 mins left',size: 16,),
                        ],)
                      ],
                    ),
                  ),
                );
              })

            ],

          ),
        ),
      ),
    );
  }
}
