


import 'package:flutter/material.dart';
import 'package:flutter_belka/constants/colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true,title: Text('Account',style: TextStyle(color: kPrimary),),backgroundColor: kWhite,),
        body: Container( padding: EdgeInsets.symmetric(horizontal: 20).copyWith(top: 40),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Container( padding: EdgeInsets.only(bottom:30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.account_circle,size: 32,color: kPrimary,),
                      SizedBox(width:30,),
                      Text('Profile',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
                    ],
                  )
              ),

              Container( padding: EdgeInsets.only(bottom:30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.shop_sharp,size: 32,color: kPrimary,),
                      SizedBox(width:30,),
                      Text('location',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
                    ],
                  )
              ),
              Container( padding: EdgeInsets.only(bottom:30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on_outlined,size: 32,color: kPrimary,),
                      SizedBox(width:30,),
                      Text('Contacr details',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
                    ],
                  )
              ),
              Container( padding: EdgeInsets.only(bottom:30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.settings,size: 32,color: kPrimary,),
                      SizedBox(width:30,),
                      Text('settings',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
                    ],
                  )
              ),
              Container( padding: EdgeInsets.only(bottom:30),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.login_outlined,size: 32,color: kPrimary,),
                      SizedBox(width:30,),
                      Text('log-0ut',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
                    ],
                  )
              ),

            ],
          ),));
  }
}
