import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kati_zero/core/utils/app_%20routes.dart';
import '../theme/custom_color.dart';
import 'custom_continer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRow2 extends StatelessWidget {
  final Widget? image;
  const CustomRow2({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 110,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.Leaderboard_screen);
          },
          child: CustomContainer(
            height: 6.h,
            width: 45.w,
            decoration:
            BoxDecoration(
                color: CustomColor.cutomDarkBlue,
                borderRadius: BorderRadius.circular(20)),
            widget: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 5.h,
                    width:5.w ,
                    child: Image(
                        image: AssetImage(
                            'assets/images/group14.png'
                        ))),
                Text('Leader Board',
                  style:
                  GoogleFonts.poppins(
                    fontSize: 10.px,
                    fontWeight: FontWeight.w600,
                    color: CustomColor.customWhite,) ),
              ],
            ),
          ),
        ),

        SizedBox(
            height: 8.h,
            width:8.w ,
            child:  image ?? Image(image: AssetImage('assets/images/Vector2.png'))),
      ],
    );
  }
}
