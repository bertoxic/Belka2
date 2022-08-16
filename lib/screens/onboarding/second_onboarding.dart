import 'package:flutter/material.dart';
import 'package:flutter_belka/constants/colors.dart';
import 'package:flutter_belka/constants/spacer.dart';
import 'package:flutter_belka/screens/widget/belkabutton.dart';
import 'package:flutter_belka/screens/widget/circle.dart';

class SecondOnboarding extends StatelessWidget {
  const SecondOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Vaccination Inquiries",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          heightSpace(20),
          const Text(
            "Follow vaccination inquiry guidelines",
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.left,
          ),
          heightSpace(20),
          const MyCircle(
            color: kPrimary,
          ),
          heightSpace(20),
          const BelkaButton(text: "Continue")
        ],
      ),
    ));
  }
}
