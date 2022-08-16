import 'package:flutter_belka/screens/authpages.dart/forgotpassword.dart';
import 'package:flutter_belka/screens/authpages.dart/login.dart';
import 'package:flutter_belka/screens/authpages.dart/newpassword.dart';
import 'package:flutter_belka/screens/authpages.dart/signup.dart';
import 'package:flutter_belka/screens/homePage/HomePage.dart';

final route = {
  '/signup': (context) => const Signup(),
  '/login': (context) => const Login(),
  '/forgotpassword': (context) => const ForgotPassword(),
  '/newpassword': (context) => const NewPassword(),
  '/HomePage': (context) => const HomePage()
};
