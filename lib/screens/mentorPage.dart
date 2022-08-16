

import 'package:flutter/material.dart';
import 'package:flutter_belka/screens/tutorPage.dart';
import 'package:flutter_belka/screens/widget/bigtext.dart';
import 'package:flutter_belka/screens/widget/mytextform.dart';
import 'package:flutter_belka/screens/widget/smallTxt.dart';
import 'package:flutter_belka/constants/dimensions/dimensionX.dart';
import '../constants/colors.dart';
import 'BookingPage.dart';

class MentorPage extends StatefulWidget {
  const MentorPage({Key? key}) : super(key: key);

  @override
  State<MentorPage> createState() => _MentorPageState();
}

class _MentorPageState extends State<MentorPage> {
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
              'Senior-Youth Mentorship',
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
                hintText: "Search ",
                icon: Icons.search,
              ),
              SizedBox(height: Dimenx.height20),
              Container(height: Dimenx.height20*10, width: double.infinity, padding: EdgeInsets.symmetric(horizontal: Dimenx.height10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey.shade300)),
                child: Smalltext("Search for Program text These are product that will be available for purhase over a prolonged period on the app  and produced relatively large quantities (100 pieces and above). They are constantly replenished as stock reduces"),),
              SizedBox(height: Dimenx.iconSize18,),
              SizedBox(height: Dimenx.iconSize18,),
              ListView.builder( itemCount: 7, physics: NeverScrollableScrollPhysics(), shrinkWrap: true,
                  itemBuilder: (context, index){

                    return GestureDetector( onTap: (){
                      Navigator.push((context), MaterialPageRoute(builder: (context)=> BookingPage()));
                    },
                      child: Column(
                        children: [
                          Container( height: 100, padding: EdgeInsets.symmetric(vertical: Dimenx.height10/2,horizontal:Dimenx.width10, ), margin: EdgeInsets.only(bottom: 0),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(1),border: Border.all(color: Colors.grey.shade300)),
                            child: Row(
                              children: [
                                CircleAvatar(backgroundImage: AssetImage('assets/images/model (21).jpg'),radius: 34,)
                                ,SizedBox(width: Dimenx.iconSize18,),
                                Column( crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Hero(tag: "subject$index",
                                        child: BigText("Lend-A-Hand Network",size: 18,color: kBlack,)),
                                    Row( crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [ Icon(Icons.location_on_outlined,color: Colors.grey.shade400,),
                                        SizedBox(width: Dimenx.iconSize18/3,),
                                        Smalltext('Senior Home, KingWest village',size: 14,color: kPrimary,),
                                      ],
                                    ),
                                    Row( crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [ Icon(Icons.access_time_outlined,color: Colors.grey.shade400,),
                                        SizedBox(width: Dimenx.iconSize18/3,),
                                        Smalltext('10am-3pm saturday june 2022',size: 14,),
                                      ],
                                    ),
                                  ],)
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(  padding: EdgeInsets.symmetric(vertical: Dimenx.height10/2,horizontal:Dimenx.width10,),
                                  decoration:BoxDecoration(color: Colors.grey.shade200,border: Border(right: BorderSide(color: Colors.grey.shade500,width: 0.5))),
                                  child: Center(child: Smalltext('5 slots available',color: kPrimary,)),
                                ),
                              ),
                              Expanded(
                                child: Container( padding: EdgeInsets.symmetric(vertical: Dimenx.height10/2,horizontal:Dimenx.width10,),
                                  decoration:BoxDecoration(color: Colors.grey.shade200,border: Border(left: BorderSide(color: Colors.grey.shade500,width: 0.5))),
                                  child: Center(child: Smalltext('Register',color: kPrimary,)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Dimenx.height20,)
                        ],
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
