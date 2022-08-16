import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_belka/screens/widget/mytextform.dart';

class NameEdit extends StatelessWidget {
  const NameEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( margin: EdgeInsets.only(top: 100,right: 10,left: 10),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox( height: 80,
                child: Column(mainAxisAlignment:MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Firstname'),
                MyCustomTextField(),
              ],
            )),
            SizedBox(height: 30,),
            SizedBox( height: 80,
                child: Column( mainAxisAlignment:MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('LastName'),
                MyCustomTextField(),
              ],
            )),]
        ),
      ),
    );
  }
}
