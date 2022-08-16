import 'package:flutter/material.dart';
import 'package:flutter_belka/constants/dimensions/dimensions.dart';
import 'package:flutter_belka/helpers/myroutes.dart';
import 'package:flutter_belka/screens/onboarding/onboarding.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'screens/onboarding/splashscreen.dart';

void main() async{
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  Dimensions();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: route,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Onboarding(),
      debugShowCheckedModeBanner: false,
    );
  }
}
