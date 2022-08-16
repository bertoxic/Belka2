import 'package:flutter/material.dart';
import 'package:flutter_belka/constants/dimensions/dimensionX.dart';
import 'package:flutter_belka/screens/appointmentPage.dart';
import 'package:flutter_belka/screens/widget/belkabutton.dart';
import 'package:flutter_belka/screens/widget/bigtext.dart';
import 'package:flutter_belka/screens/widget/smallTxt.dart';
import '../constants/colors.dart';
import 'mentorPage.dart';

class BookingPage extends StatefulWidget {
   BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea( top: true,
      child: Scaffold(
        body: Stack(children: [
          Positioned(
              child: Container(
                color: kPrimary,
              )),
          Positioned(top:0,left: 0, right: 0,
              child: Container(
                child: Container( height: Dimenx.height20*10+20, width: Dimenx.width30*10,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/model (29).jpg'),fit: BoxFit.fitWidth)),
                  child: Text("h"),),
              )),
          Positioned(top:0,left: 0, right: 0,
              child: Container(
                child: Container( height: Dimenx.height20*10+20, width: Dimenx.width30*10,
                  decoration: BoxDecoration(color: kPrimary.withOpacity(0.4)),
                  child: Text("h"),),
              )),
          Positioned( top: 200, left: 0,right: 0, bottom: 0,
              child: Container( padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(color: Colors.grey.shade100,borderRadius: BorderRadius.circular(20).copyWith(bottomRight: Radius.circular(0),bottomLeft: Radius.circular(0))),
                child: Column(  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                        Hero(tag: 'subject1',
                        child: BigText("Lend A Hand-Network",size: 18,color: kBlack,)),
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
                        SizedBox(height: Dimenx.height15,),
                        Card(child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container( padding:  EdgeInsets.all(Dimenx.height10),
                              child: Row(children: [
                                const Icon(Icons.circle,color: kPrimary,),
                                SizedBox(width: Dimenx.height10,),
                                Smalltext('5 slots available',size: 16,),
                              ],),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.account_box,color: kPrimary,),
                            )
                          ],
                        ),),
                        SizedBox(height: Dimenx.height15,),

                      ],),
                    BigText('Details'),
                    SizedBox(height: Dimenx.height10,),
                    Container(height: Dimenx.height100, width: double.infinity, padding: EdgeInsets.symmetric(horizontal: Dimenx.height10),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey.shade300)),
                      child: Smalltext("text"),),
                    SizedBox(height: Dimenx.height10,),
                    BigText('Name'),
                    SizedBox(height: Dimenx.height10,),
                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: Dimenx.height30+10, width: double.infinity, padding: EdgeInsets.symmetric(horizontal: Dimenx.height10),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey)),
                          child: Smalltext("M0modus clever"),),
                        SizedBox(height: Dimenx.height20,),
                        BigText('Age'),
                        SizedBox(height: Dimenx.height10,),
                        Container(height: Dimenx.height30+10, width: double.infinity, padding: EdgeInsets.symmetric(horizontal: Dimenx.height10),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey)),
                          child: Smalltext("21"),),
                      ],
                    ),
                    SizedBox(height: Dimenx.height10,),
                    SizedBox(height: Dimenx.height15,),
                    //SizedBox(height: Dimension.height15,),
                    BelkaButton(text: 'Register ',function: (){
                      Navigator.push((context), MaterialPageRoute(builder: (context)=>AppointmentPage()));
                    },)

                  ],
                ),
              )),
        ],),
      ),
    );
  }
}
