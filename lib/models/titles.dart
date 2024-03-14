import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Titletxt extends StatelessWidget {
  Titletxt({super.key, required this.titileTxt});
  final String titileTxt;
  @override
  Widget build(BuildContext context) {
    return Text(
      titileTxt,
      style: GoogleFonts.concertOne(fontSize: 20),
    );
  }
}
