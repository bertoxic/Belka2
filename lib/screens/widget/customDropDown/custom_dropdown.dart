

import 'package:flutter_belka/constants/dimensions/dimensionX.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  String text;
   CustomDropdown({required this.text,Key? key}) : super(key: key);

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  late GlobalKey actionKey;
  double? height,width,xPosition,yPosition;
  bool isDropdown=false;
  OverlayEntry? floatingDropdown;

  @override
  void initState() {
    actionKey=LabeledGlobalKey(widget.text);
    super.initState();
  }
  void findRenderData(){
    //final RenderBox renderBox=context.findRenderObject() as RenderBox;
    final RenderBox renderBox=actionKey.currentContext!.findRenderObject() as RenderBox;
    height=renderBox.size.height;
    width=renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    xPosition=offset.dx;
    yPosition=offset.dy;
    print(yPosition);
  }
  OverlayEntry _createFloatingDrop(){
    return OverlayEntry(builder: (context){
     return Positioned(
         left: xPosition,
         top: yPosition! + height!,
         width: width,
         height: 4*height!+40,
         child: DropDown(itemHeight:height!));
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: actionKey,
      onTap: (){
      setState(() {
        if(isDropdown){
          floatingDropdown!.remove();
        }else{
          findRenderData();
          floatingDropdown=_createFloatingDrop();
          Overlay.of(context)?.insert(floatingDropdown!);
        }
        isDropdown=!isDropdown;
      });
    },
      child: Container( padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
        decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(8)),
        child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  <Widget>[
            Text(widget.text.toUpperCase(),style: TextStyle(fontSize: 18,color: Colors.grey.shade200),),
            Icon(Icons.arrow_drop_down_outlined)
          ],
        ),
      ),
    );
  }
}

class DropDown extends StatelessWidget{
  double itemHeight;
  String? text;
  bool? isSelected;
  DropDown({required this.itemHeight,this.text,this.isSelected});

  @override
  Widget build(BuildContext context) {
   return Column(children: [
     SizedBox(height: Dimenx.height10/2,),
     Align(
       alignment: Alignment(-0.85,0),
       child: ClipPath(
         clipper: ArrowClipper(),
         child: Container( height:Dimenx.height10,
         width:Dimenx.width30,
        decoration: BoxDecoration(color: Colors.teal.shade600),
        ),
       ),
     ),
     Container(height: itemHeight*4,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(8),
       color: Colors.teal.shade600,
     ),
       child: Column(children: [
         DropDownItemz(text: "world news day",),
         DropDownItemz(text: "world news day",),
         DropDownItemz(text: "world news day",),
         DropDownItemz(),
       ],),
     ),

   ],);
  }
}
class DropDownItemz extends StatelessWidget{
  final IconData? Iconz;
  String? text;
  bool? isSelected;
  DropDownItemz({this.isSelected,this.text, this.Iconz});
  @override
  Widget build(BuildContext context) {
    return Container( padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
      decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(8)),
      child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  <Widget>[
          Text(text??"".toUpperCase(),style: TextStyle(fontSize: 18,color: Colors.grey.shade200),),
          Icon(Iconz)
        ],
      ),
    );
  }

}

class ArrowClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width/2, 0);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }


}







