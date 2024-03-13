import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontStudy extends StatelessWidget {
  const FontStudy({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hi there hello worldd',
        style: GoogleFonts.roboto(
          textStyle: TextStyle(color: Colors.blue, letterSpacing: 2),
          fontSize: 20,
        ),
      ),
    );
  }
}
