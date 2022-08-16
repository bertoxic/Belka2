import 'package:flutter/material.dart';
import 'package:flutter_belka/constants/colors.dart';
import 'package:flutter_belka/constants/spacer.dart';
import 'package:flutter_belka/helpers/textstyles.dart';
import 'package:flutter_belka/screens/homePage/HomePage.dart';
import 'package:flutter_belka/screens/profilePages/GenderEdit.dart';
import 'package:flutter_belka/screens/profilePages/NameEdit.dart';
import 'package:flutter_belka/screens/profilePages/profilePage.dart';
import 'package:flutter_belka/screens/registration_screen/RegisterPage.dart';
import 'package:flutter_belka/screens/widget/belkabutton.dart';
import 'package:flutter_belka/screens/widget/customDropDown/kustomScreen.dart';
import 'package:flutter_belka/screens/widget/mytextform.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Column(children: [
        heightSpace(150),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            decoration: const BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(children: [
              heightSpace(50),
              const Text(
                "Let\'s Get Started",
                style: headline,
              ),
              heightSpace(15),
              const Text(
                "Create a new account",
                style: TextStyle(fontSize: 17),
              ),
              heightSpace(10),
              const MyCustomTextField(
                hintText: "Full Name",
                icon: Icons.person,
              ),
              heightSpace(20),
              const MyCustomTextField(
                hintText: "Your Email",
                icon: Icons.email,
              ),
              heightSpace(20),
              const MyCustomTextField(
                hintText: "Password",
                icon: Icons.lock,
              ),
              heightSpace(20),
              const MyCustomTextField(
                hintText: "Confirm password",
                icon: Icons.lock,
              ),
              heightSpace(20),
              BelkaButton(text: "SIGN UP",function: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
              },),
              heightSpace(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account"),
                  TextButton(
                      onPressed: (() {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>KustomDrop()));
                        //Navigator.pushNamed(context, '/login');
                      } ),
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                            color: kPrimary, fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              Row( crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: const SizedBox( width:100,
                        child: Divider(thickness: 1,color: Colors.grey,height: 5,)),
                  ),
                  TextButton(
                      onPressed: (() => Navigator.pushNamed(context, '/login')),
                      child: const Text(
                        "OR",
                        style: TextStyle(
                            color: kBlack, fontWeight: FontWeight.bold),
                      )),
                  Expanded(
                    child: const SizedBox( width:100,
                        child: Divider(thickness: 1,color: Colors.grey,height: 5,)),
                  ),
                ],
              ),

              Container( height: 60, padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: kDgrey,width: 2)
              ),
                child: Row(// mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.fmd_good),
                    SizedBox(width: 90,),
                    Text('Login with Google')
                  ],
                ),),
              heightSpace(20),
              Container( height: 60,padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: kDgrey,width: 2),
                ),
                child: Row(// mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.fmd_good),
                    SizedBox(width: 90,),
                    Text('Login with Facebook')
                  ],
                ),),
            ]),
          ),
        )
      ]),
    );
  }
}
