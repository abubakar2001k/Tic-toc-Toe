import 'package:flutter/cupertino.dart';
import '../presentation/home_screen/widgets/custombox.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../theme/custom_color.dart';

class CustomRow1 extends StatelessWidget {
  const CustomRow1({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Row(
          spacing: 30,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Custombox(
              assetImage: 'assets/images/group_7.png',
            ),
            Text('VS',  style:
            GoogleFonts.poppins(
              fontSize: 25.px,
              fontWeight: FontWeight.w700,
              color: CustomColor.customLightGrey,)
            ),
            Custombox(
              assetImage: 'assets/images/group_5.png',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 70,
          children: [
            Text('Player 1',
                style:
                GoogleFonts.poppins(
                  fontSize: 20.px,
                  fontWeight: FontWeight.w600,
                  color: CustomColor.customDarkGrey,)
            ),
             Text('Player 2',
                style:
                GoogleFonts.poppins(
                  fontSize: 20.px,
                  fontWeight: FontWeight.w600,
                  color: CustomColor.customDarkGrey,)
            ),
          ],
        ),
      ],
    );
  }
}
