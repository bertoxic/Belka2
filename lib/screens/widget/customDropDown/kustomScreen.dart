import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_belka/screens/widget/customDropDown/custom_dropdown.dart';

class KustomDrop extends StatelessWidget {
  const KustomDrop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding( padding: EdgeInsets.symmetric(horizontal: 32,vertical: 48),
        child:Column(
          children: [
            CustomDropdown(text: 'first try me',),
            CustomDropdown(text: 'first try e',),
          ],
        ) ,
      ),
    );
  }
}
