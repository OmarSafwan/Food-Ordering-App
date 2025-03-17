import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function()? onTap;            //--
  final Color color;

  const Button({
    super.key,
    required this.text,
    required this.onTap,
    required this.color,
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.fromLTRB(60, 8, 60, 8),
        decoration: BoxDecoration(borderRadius : BorderRadius.circular(20),color: color),
        child: Text(text ,style: GoogleFonts.dmSerifDisplay(
          fontSize: 25,),
      ),
      ),
    );
  }
}
