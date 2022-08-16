
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_belka/constants/dimensions/dimensions.dart';
import 'package:flutter_belka/screens/myPrograms.dart';
import 'package:flutter_belka/screens/widget/bigtext.dart';

import '../widget/mytextform.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  bool view=true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Container( padding: const EdgeInsets.symmetric(vertical:45,horizontal: 20),color: Colors.grey.shade100,
          child: Column(
            children: [
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.list),
                  CircleAvatar(child: Icon(Icons.person_add),)
                ],
              ),
             Container(
               child: Column(crossAxisAlignment: CrossAxisAlignment.start,
               children: [
               BigText("Hey Brender"),
                 SizedBox(height: 30,),
               Text("Belka Enrichment center programs and services are listed below, Please JOIN NOW to have an active program. "),
             ],),),
              SizedBox(height: 30,),
              const MyCustomTextField(
                hintText: "Search for Program",
                icon: Icons.search,
              ),
              ListView.builder( itemCount: 8,physics: NeverScrollableScrollPhysics(), shrinkWrap: true,
                 //padding: EdgeInsets.zero,
                 //itemExtent: 100,
                  itemBuilder: (context , index){

                return GestureDetector(
                   onTap: (){

                   },
                    child: Drew(img: "assets/images/model (${index+3}).jpg",));
              })
            ],
          ),
        ),
      ),
    );
  }
}


class Drew extends StatefulWidget {
  String? img;
  String? dropTxt;
   Drew({this.img,this.dropTxt,Key? key}) : super(key: key);

  @override
  State<Drew> createState() => _DrewState();
}
bool view=true;
class _DrewState extends State<Drew> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector( onTap:(){
          setState(() {
            Navigator.push((context), MaterialPageRoute(builder: (context)=> MyPrograms()));
            // view=!view;
            // print(view);
          });
        },
          child: Container(
            margin: const EdgeInsets.only(bottom: 15), padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            height:210, width: double.infinity,
            decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(8), color:Colors.grey.shade100,
                boxShadow:  [
                  BoxShadow(color: Colors.grey.shade400.withOpacity(0.5), offset:Offset(0, 1.5),blurRadius: 4,spreadRadius:3 ),
                  BoxShadow(color: Colors.grey.shade100.withOpacity(0.5), offset:Offset(2, 0),blurRadius: 4,spreadRadius:3 ),
                  //BoxShadow(color: Colors.grey.shade600.withOpacity(0.4), offset:Offset(4, 4),blurRadius: 5,spreadRadius:1 )
                ]

            ),
            child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container( clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(widget.img!),fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(8)
                  ),
               height: 160,
                child: Container(),),
                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Text("Summer Camp Programs"),
                    GestureDetector(onTap:(){
                      setState(() {
                        view=!view;

                      });
                      print(view);
                    },
                        child: view?const Icon(Icons.arrow_drop_up_sharp): const Icon(Icons.arrow_drop_down_sharp)),
                  ],
                ),
              ],
            ),
          ),
        ),
        view==false?Container(): Visibility( visible:view,
          child: Container(
            margin: EdgeInsets.only(bottom: 15), padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            height:150, width: double.infinity,
            decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.grey.shade100,
                boxShadow:  [
                  BoxShadow(color: Colors.grey.withOpacity(0.4), offset:Offset(0, 9),blurRadius: 5,spreadRadius:1 )
                  // BoxShadow(color: Colors.grey.shade800.withOpacity(0.5), offset:Offset(1, 2),blurRadius: 3,spreadRadius:1 )
                ]

            ),
            child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
               // Icon(Icons.arrow_drop_up_sharp),
                Expanded(child: Center(child: Text(' These are product that will be available for purhase over a prolonged period on the app  and produced relatively large quantities (100 pieces and above). They are constantly replenished as stock reduces.'))),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
