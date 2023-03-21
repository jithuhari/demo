import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

final String text;
  final double hight;
   final double width;
  final  Color color;
  final Function()? onTap;

  const  CustomButton({
    Key? key, required this.hight,  required this.width, required this.color, this.onTap, required this.text,
   

}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: hight,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green),
            color: color,
            borderRadius: BorderRadius.circular(6)),
        child:  Center(
          child:  Text(
            text,
            style:const TextStyle(color: Colors.green),
                ),
          ),
        ),
      );
  }
}