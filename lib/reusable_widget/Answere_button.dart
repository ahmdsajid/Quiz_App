import 'package:flutter/material.dart';

class AnswereButton extends StatelessWidget {
  const AnswereButton({super.key, required this.Answeretext, required this.ontap});

final String Answeretext;
final void Function()ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: ElevatedButton(onPressed: ontap, 
      
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
        backgroundColor: Colors.teal[700],
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
      ),
      
      child: Text(Answeretext,style: TextStyle(fontSize: 15),)),
    );
  }
}