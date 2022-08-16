import 'package:flutter/material.dart';
import 'package:flutter_belka/screens/onboarding/first_onboarding.dart';
import 'package:flutter_belka/screens/onboarding/second_onboarding.dart';
import 'package:flutter_belka/screens/onboarding/third_onboarding.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController controller = PageController();
  int _curr = 0;
  final List<Widget> _list = <Widget>[
    const FirstOnboarding(),
    const SecondOnboarding(),
    const ThirdOnboarding(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      onPageChanged: (num) {
        setState(() {
          _curr = num;
        });
      },
      children: _list,
    ));
  }
}
