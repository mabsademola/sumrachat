import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sumrachat/utils/colors.dart';
import '../../../../widget/widgets.dart';

/// 500 CALLER
class SourceSansProText700 extends StatelessWidget {
  SourceSansProText700(
      {Key? key,
      required this.text,
      this.color = AppColors.blackColor,
      this.fontSize = 38})
      : super(key: key);
  String text;
  Color? color;
  double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.sourceSansPro(
        fontSize: fontSize,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        color: color,
      ),
    );
  }
}
