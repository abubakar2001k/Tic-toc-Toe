import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'custom_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomFonts {
  // Splach Screen  (KATI ZERO)
  static TextStyle splachHed = GoogleFonts.poppins(
    fontSize: 35.px,
    fontWeight: FontWeight.w400,
    height: 52.5.px,
    color: CustomColor.customWhite,
    letterSpacing: 52.px,
  );

  //POWERED BY
  static TextStyle splachbot1 = GoogleFonts.poppins(
    fontSize: 20.px,
    fontWeight: FontWeight.w500,
    height: 30.px,
    color: CustomColor.customWhite,
    // letterSpacing: 52.px,
  );

  //  TECH IDARA
  static TextStyle splachbot2 = GoogleFonts.poppins(
    fontSize: 20.px,
    fontWeight: FontWeight.w500,
    height: 30.px,
    color: CustomColor.cutomDarkBlue,
    letterSpacing: 52.px,
  );

  // For Home page  (vs Text)
  static TextStyle homevs = GoogleFonts.poppins(
    fontSize: 40.px,
    fontWeight: FontWeight.w700,
    height: 60.px,
    color: CustomColor.customLightGrey,
    letterSpacing: 24.px,
  );

  // player 1 and player 2
  static TextStyle homeplay1_2 = GoogleFonts.poppins(
    fontSize: 25.px,
    fontWeight: FontWeight.w600,
    height: 37.5.px,
    color: CustomColor.customDarkGrey,
    letterSpacing: 22.px,
  );

  // leaderboard  container text
  static TextStyle ldbox = GoogleFonts.poppins(
    fontSize: 18.px,
    fontWeight: FontWeight.w600,
    // height: 27.px,
    color: CustomColor.customWhite,
    letterSpacing: 22.px,
  );

  // Winning Continer Player 1 text;
  static TextStyle winply1 =
  GoogleFonts.poppins(
    fontSize: 20.px,
    fontWeight: FontWeight.w400,
    color: CustomColor.customWhite,
  );

  // Winning Continer (Won) text;
  static TextStyle won =  GoogleFonts.poppins(
    fontSize: 40.px,
    fontWeight: FontWeight.w700,
    color: CustomColor.customWhite,
  );

//  LEADER BOARD (LEADER)
  static TextStyle ldhed1 = GoogleFonts.poppins(
    fontSize: 30.px,
    fontWeight: FontWeight.w700,
    color: CustomColor.cutomDarkBlue,
  );

  //BOARD
  static TextStyle ldhed2 = GoogleFonts.poppins(
    fontSize: 20.px,
    fontWeight: FontWeight.w700,
    color: CustomColor.cutomDarkBlue,
  );

  //BOARD
  static TextStyle ldhedply = GoogleFonts.poppins(
    fontSize: 20.px,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
}
