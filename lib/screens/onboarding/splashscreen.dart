import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: kPrimary,
        body: Center(
          child: Text('LOGO'),
        ));
  }
}
