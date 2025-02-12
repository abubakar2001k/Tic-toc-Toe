import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kati_zero/presentation/home_screen/home_vm.dart';
import 'package:kati_zero/theme/custom_color.dart';
import 'package:kati_zero/widgets/custom_row1.dart';
import 'package:kati_zero/widgets/custom_row_2.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => HomeVm(),
      child: Consumer<HomeVm>(
        builder: (context, vm, child) {
          return SafeArea(
              child: Scaffold(
                  body: Column(children: [
            CustomRow1(),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Table(
                  border: TableBorder(
                    horizontalInside: BorderSide(width: 1, color: Colors.grey),
                    verticalInside: BorderSide(width: 1, color: Colors.grey),
                  ),
                  children: List.generate(
                      3,
                      (row) => TableRow(
                              children: List.generate(3, (col) {
                            int index = row * 3 + col;
                            return GestureDetector(
                              onTap: () => vm.handleTap(index, context),
                              child: Container(
                                height: 15.h,
                                width: 2.w,
                                decoration: BoxDecoration(
                                  // color: Colors.blue.shade100,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    vm.board[index],
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: vm.board[index] == "X" ? CustomColor.cutomDarkBlue : CustomColor.cutomLightBlue,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }))),
                ),
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              "${vm.currentPlayer}  ..Turn",
              style: TextStyle(fontSize: 18, color: Colors.red),
            ),
            SizedBox(height: 4.h),
            CustomRow2(
                // this is home screen
                image: GestureDetector(
                    onTap: () {
                      vm.resetGame(context);
                    },
                    child: Image(image: AssetImage('assets/images/Vector2.png')))),
          ])));
        },
      ),
    );
  }
}
