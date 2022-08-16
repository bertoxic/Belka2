import 'package:flutter/material.dart';
import 'package:flutter_belka/constants/spacer.dart';
import 'package:flutter_belka/helpers/textstyles.dart';
import 'package:flutter_belka/screens/widget/belkabutton.dart';
import 'package:flutter_belka/screens/widget/mytextform.dart';

import '../../constants/colors.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            heightSpace(50),
            Row(
              children: [
                const IconButton(
                    onPressed: null, icon: Icon(Icons.arrow_back_ios)),
                const Text(
                  "Forgot Password",
                  style: headline,
                )
              ],
            ),
            const Divider(),
            const Text(
                "Enter the email associated with your account and we will send an instruction to reset your passsword"),
            heightSpace(30),
            const MyCustomTextField(
              hintText: "Your Email",
            ),
            heightSpace(30),
            BelkaButton(
              text: "Submit",
              function: () => Navigator.pushNamed(context, '/newpassword'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Back to"),
                TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/login'),
                    child: const Text(
                      "Sign in?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: kPrimary),
                    ))
              ],
            ),
          ],
        ),
      )),
    );
  }
}
