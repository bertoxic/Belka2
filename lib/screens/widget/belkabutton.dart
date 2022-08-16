import 'package:flutter/material.dart';
import 'package:flutter_belka/constants/colors.dart';

class BelkaButton extends StatelessWidget {
  final String? text;
  final function;
  const BelkaButton({Key? key, @required this.text, this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: kPrimary, borderRadius: BorderRadius.circular(3)),
        child: Center(
            child: Text(
          text!,
          style: const TextStyle(fontSize: 20, color: kWhite),
        )),
      ),
    );
  }
}
