

import 'package:flutter/material.dart';
import 'package:flutter_belka/constants/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('Account',style: TextStyle(color: kPrimary),),backgroundColor: kWhite,),
    body: Container( padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 40),
      child: Column( crossAxisAlignment: CrossAxisAlignment.start,
    children:  [
      Container( padding: EdgeInsets.symmetric(vertical:30,),
        decoration: BoxDecoration(),
        child: Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(radius: 38,),
            SizedBox(width:15,),
            Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Franca ImaGode',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                Text('Profile',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
              ],
            )
          ],
        )
      ),
      Tilelizt(i1: Icon(Icons.female,size: 32,color: kPrimary,) ,w2:  Text('Gender',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
      w3:Text('Female',style: TextStyle(fontSize: 16,)),w4:  Icon(Icons.arrow_right_outlined,size: 32,color: kPrimary,),
      ),
      Tilelizt(i1: Icon(Icons.calendar_today_outlined,size: 32,color: kPrimary,) ,w2:  Text('Birthday',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
      w3: Text('25th May 1999',style: TextStyle(fontSize: 16,)) ,w4:  Icon(Icons.arrow_right_outlined,size: 32,color: kPrimary,),),
      //i1:represent icon 1  and w2:widget 2 holds a widget
      Tilelizt(i1: Icon(Icons.email_outlined,size: 32,color: kPrimary,), w2:Text('Email',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
      w3: Text('franca121@google.com',style: TextStyle(fontSize: 16,)),
        w4: Icon(Icons.arrow_right_outlined,size: 32,color: kPrimary,),
      ),
      Tilelizt(i1: Icon(Icons.phone_android_sharp,size: 32,color: kPrimary,), w2:Text('Phone Number',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
      w3: Text('+12 456 9029',style: TextStyle(fontSize: 16,)),
        w4: Icon(Icons.arrow_right_outlined,size: 32,color: kPrimary,),
      ),
      Tilelizt(i1: Icon(Icons.lock,size: 32,color: kPrimary,), w2:Text('Password',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
      w3: Text('*******',style: TextStyle(fontSize: 16,)),
        w4: Icon(Icons.arrow_right_outlined,size: 32,color: kPrimary,),
      ),


    ],
    ),));
  }
}

class Tilelizt extends StatelessWidget {
  Icon? i1;
  Widget? w2;
  Widget? w3;
  Widget? w4;
  Tilelizt({
    this.i1,
    this.w2,
    this.w3,
    this.w4,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( padding: EdgeInsets.only(bottom:45),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(child: Row(children: [
              i1??Container(),
              SizedBox(width:30,),
              w2??Container(),
            ],),),
            Container(child: Row(children: [
              w3??Container(),
              //Text('franca121@google.com',style: TextStyle(fontSize: 16,)),
              SizedBox(width:15,),
              w4??Container(),

            ],),)

          ],
        )
    );
  }
}
