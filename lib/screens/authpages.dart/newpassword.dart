import 'package:flutter/material.dart';
import 'package:flutter_belka/constants/spacer.dart';
import 'package:flutter_belka/helpers/textstyles.dart';
import 'package:flutter_belka/screens/widget/belkabutton.dart';
import 'package:flutter_belka/screens/widget/mytextform.dart';

import '../../constants/colors.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
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
              children: const [
                IconButton(onPressed: null, icon: Icon(Icons.arrow_back_ios)),
                Text(
                  "New password",
                  style: headline,
                )
              ],
            ),
            const Divider(),
            const Text(
                "Your new password must be different from the previous used passwords."),
            heightSpace(30),
            const MyCustomTextField(
              hintText: "Password",
              isTextObscured: true,
              icon: Icons.lock,
            ),
            heightSpace(20),
            const MyCustomTextField(
              hintText: "Confirm Password",
              isTextObscured: true,
              icon: Icons.lock,
            ),
            heightSpace(30),
            const BelkaButton(text: "Reset Password"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Back to"),
                TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/login'),
                    child: const Text(
                      "login",
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
