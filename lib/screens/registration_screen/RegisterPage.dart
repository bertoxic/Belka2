import 'package:flutter/material.dart';
import 'package:flutter_belka/constants/drops.dart';
import 'package:flutter_belka/screens/homePage/HomePage.dart';
import 'package:flutter_belka/screens/widget/bigtext.dart';
import 'package:flutter_belka/screens/widget/smallTxt.dart';
import 'package:get/get.dart';
import '../../constants/dimensions/dimensionX.dart';
import '../widget/belkabutton.dart';
import '../widget/textfieldX.dart';

class RegisterPage extends StatefulWidget {
const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final  _formKey= GlobalKey<FormState>();
  String _gender=gender[0];
  String _education=education[0];
  String _program=programs[0];
  String _bloodGrp=bloodGroup[0];
  String _allergy=allergies[0];
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Form(
      child: Scaffold( resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container( padding: EdgeInsets.symmetric(horizontal: Dimenx.height20).copyWith(top: Dimenx.height45),
            child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Text('Register to access your Programs',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 28,),textAlign: TextAlign.center,)),
                ],
              ),
              SizedBox(height: Dimenx.height30,),
              TextFieldX(field:"Full Name",hinttxt: "Your name",),
              TextFieldX(field:"Enter Email",hinttxt: "something@gmail.com",prefixIcon: Icons.mail_outlined,),
              TextFieldX(field:"Phone Number",hinttxt: "(207) 786-412",prefixIcon: Icons.phone_android_sharp,),
              Container(
                child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  BigText('Your Age',size: Dimenx.iconSize18,),
                  SizedBox(height:Dimenx.height15),
                  GestureDetector(
                    onTap: (){
                      showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime.now());
                    },
                    child: Container( height: Dimenx.height10*5, width: double.infinity, padding: EdgeInsets.symmetric(horizontal: Dimenx.width10),
                      margin: EdgeInsets.only(bottom: Dimenx.width30),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey)),
                      child: Align( alignment: Alignment.centerLeft,
                          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Smalltext('12/12/14',size: Dimenx.width10*1.6,),
                              Icon(Icons.calendar_today_outlined,color: Colors.grey,)
                            ],
                          )),
                    ),
                  ),
                 Metryin(title: 'Choose Gender',dropzItem: gender, hintTxt: 'Select Gender',gen: _gender,func: (value){setState(() {
                   _gender=value!; print(_gender);
                 });},),
                 Metryin(title: 'Level of  Education',dropzItem: education, hintTxt: 'Select Gender',gen: _education,func:(value){setState(() {
                   _education=value!; print(_education);
                 });} ,),
                 Metryin(title: 'Choose Program',dropzItem: programs, hintTxt: 'Select Program',gen: _program,func: (value){setState(() {
                   _program=value!; print(_program);
                 });},),
                 Metryin(title: 'Blood Group ',dropzItem: bloodGroup, hintTxt: 'Select Gender',gen: _bloodGrp,func: (value){setState(() {
                   _bloodGrp=value!; print(_bloodGrp);
                 });},),
                 Metryin(title: 'Any Known Allergies',dropzItem: allergies, hintTxt: 'Select Gender',gen: _allergy,func: (value){setState(() {
                   _allergy=value!; print(_allergy);
                 });},),

                ],),
              ),
              BelkaButton(text: "Register",function: ()=>Navigator.push((context), MaterialPageRoute(builder: (context)=>HomePage())),),
              SizedBox(height: Dimenx.width30,)
            ],
          ),),
        ) ,
      ),
    );
  }
}

class Metryin extends StatefulWidget {
  String? title;
  String? hintTxt;
  String? gen;
  Function(String?)? func;
  List<dynamic> dropzItem;
   Metryin({this.title,required this.dropzItem,this.hintTxt,this.func,this.gen,Key? key}) : super(key: key);

  @override
  State<Metryin> createState() => _MetryinState();
}
String? _gender;
class _MetryinState extends State<Metryin> {
  @override
  void initState() {
   // _gender= widget.dropzItem[0];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Container( margin: EdgeInsets.only(bottom: Dimenx.height30),
      child: Column( crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(widget.title??'',size: Dimenx.iconSize18,),
          SizedBox(height:Dimenx.height15),
          Container( height: Dimenx.height10*5, width: double.infinity, padding: EdgeInsets.symmetric(horizontal: Dimenx.width10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(color: Colors.grey)),
            child: Align( alignment: Alignment.centerLeft,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_sharp),
                      hint: Text(widget.hintTxt??''),
                      isExpanded: true,
                      value: widget.gen,//widget.dropzItem[0],
                      items: List.generate( widget.dropzItem.length, (index) => DropdownMenuItem(value:  widget.dropzItem[index],child: Text( widget.dropzItem[index]),)),

                      onChanged: widget.func,
                  ),
                )

            ),
          ),
        ],
      ),
    );
  }
}
