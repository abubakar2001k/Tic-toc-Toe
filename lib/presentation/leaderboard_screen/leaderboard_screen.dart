import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kati_zero/core/utils/app_%20routes.dart';
import 'package:kati_zero/theme/custom_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:provider/provider.dart';
import '../../theme/custom_color.dart';
import '../home_screen/home_vm.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeVm = Provider.of<HomeVm>(context, listen: false);
    final history = homeVm.winningHistory;
    return SafeArea(
      child: Scaffold(
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.Home_screen);
                    },
                    child: SizedBox(height: 3.h, width: 3.w, child: Image(image: AssetImage('assets/images/Vector3.png'))),
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  Text(
                    'L EA D E R',
                    style: CustomFonts.ldhed2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 52, bottom: 15),
              child: Text(
                'B O A R D',
                style: CustomFonts.ldhed1,
              ),
            ),
            //  Show Total Matches Played
            Center(
              child: Text(
                "Total Games Played: ${history.length}",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: history.length,
                itemBuilder: (context, index) {
                  print('Length $history');
                  final match = history[index];
                  final winner = match['winner'] ?? "Draw";
                  final isPlayer1 = winner == homeVm.player1;

                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      height: 12.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                          color: CustomColor.customWhiteGrey,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: CustomColor.customDarkGrey.withOpacity(0.2),
                                offset: Offset(1, 1),
                                spreadRadius: 1,
                                blurRadius: 1)
                          ]),
                      child: ListTile(
                        subtitle: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: 5.h,
                                  width: 5.w,
                                  child: Image(
                                      image: AssetImage(
                                    winner == homeVm.player1 ?
                                    'assets/images/vector_o.png' : 'assets/images/vector_x.png',
                                    // 'assets/images/vector_o.png'
                                  ))),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                winner ?? 'Player 1',
                                style: CustomFonts.ldhedply,
                              ),
                              SizedBox(
                                width: 32.w,
                              ),
                              SizedBox(height: 10.h, width: 10.w, child: Image(image: AssetImage('assets/images/trophy1.png'))),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
