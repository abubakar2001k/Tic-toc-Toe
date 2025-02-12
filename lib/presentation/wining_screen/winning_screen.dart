import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kati_zero/presentation/home_screen/home_vm.dart';
import 'package:kati_zero/theme/custom_color.dart';
import 'package:kati_zero/theme/custom_fonts.dart';
import 'package:kati_zero/widgets/custom_continer.dart';
import '../../widgets/custom_row1.dart';
import '../../widgets/custom_row_2.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:provider/provider.dart';

class WinningScreen extends StatelessWidget {
  final String winner;

  const WinningScreen({super.key, required this.winner});

  @override
  Widget build(BuildContext context) {
    // final String winner = ModalRoute.of(context)?.settings.arguments as String? ?? "No Winner";
    // print("Received Winner: $winner");
    print("Received Winner in WinningScreen: $winner");

    final homeProvider = Provider.of<HomeVm>(
      context,
    );
    return SafeArea(
        child: Scaffold(
            body: Column(children: [
      CustomRow1(),
      // continer for winning Trophy
      SizedBox(height: 5.h),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomContainer(
          height: 50.h,
          width: 85.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: CustomColor.cutomDarkBlue,
          ),
          widget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30.h, width: 40.w, child: Image(image: AssetImage('assets/images/trophy1.png'))),
              Consumer<HomeVm>(
                builder: (context, provider, child) {
                  return Column(
                    children: [
                      Text(
                        winner == "Draw" ? "It's a Draw!" : winner,
                        style: CustomFonts.winply1, // Winning player font style
                      ),
                    ],
                  );
                },
              ),
              Text(
                winner == "Draw" ? "" : "WON",
                style: CustomFonts.won, // "WON" font style
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 5.h),
      CustomRow2(
          // this is wining screen
          image: GestureDetector(
              onTap: () {
                Provider.of<HomeVm>(context, listen: false).resetGame(context);
              },
              child: Image(image: AssetImage('assets/images/Vector2.png')))),
    ])));
  }
}
