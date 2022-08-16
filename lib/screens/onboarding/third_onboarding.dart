import 'package:flutter/material.dart';
import 'package:flutter_belka/constants/colors.dart';
import 'package:flutter_belka/constants/spacer.dart';
import 'package:flutter_belka/screens/widget/belkabutton.dart';
import 'package:flutter_belka/screens/widget/circle.dart';

class ThirdOnboarding extends StatelessWidget {
  const ThirdOnboarding({Key? key}) : super(key: key);

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
              "Food Distribution Program",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          heightSpace(20),
          const Text(
            "A high protein and vitamin enriched food has a big roll in monitoring health",
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.left,
          ),
          heightSpace(20),
          const MyCircle(
            color: kPrimary,
          ),
          heightSpace(20),
          BelkaButton(
            text: "Continue",
            function: () => Navigator.pushNamed(context, '/signup'),
          )
        ],
      ),
    ));
  }
}
