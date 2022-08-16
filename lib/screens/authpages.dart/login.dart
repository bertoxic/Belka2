import 'package:flutter/material.dart';
import 'package:flutter_belka/constants/colors.dart';
import 'package:flutter_belka/constants/spacer.dart';
import 'package:flutter_belka/helpers/textstyles.dart';
import 'package:flutter_belka/screens/widget/belkabutton.dart';
import 'package:flutter_belka/screens/widget/mytextform.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Column(children: [
        heightSpace(500),
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
                "Sign In to Continue",
                style: headline,
              ),
              heightSpace(15),
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
              const BelkaButton(text: "SIGN IN"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/forgotpassword'),
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kPrimary),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New to Belka?"),
                  TextButton(
                      onPressed: () => Navigator.pushNamed(context, '/signup'),
                      child: const Text(
                        "Register",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kPrimary),
                      ))
                ],
              )
            ]),
          ),
        )
      ]),
    );
  }
}
