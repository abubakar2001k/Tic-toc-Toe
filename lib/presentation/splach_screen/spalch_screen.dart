import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kati_zero/presentation/splach_screen/splach_vm.dart';
import 'package:kati_zero/theme/custom_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:kati_zero/widgets/custom_continer.dart';
import 'package:provider/provider.dart';
import '../../theme/custom_color.dart';
import 'package:google_fonts/google_fonts.dart';

class SplachScreen extends StatefulWidget {
  SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<SplachVm>(
      context,
      listen: false,
    ).startTimer(context);
  }
  final ThemeData themeData = ThemeData();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: CustomColor.cutomLightBlue,
          body: Stack(
            children: [
              CustomContainer(
                height: 52.h,
                decoration: BoxDecoration(
                  color: CustomColor.cutomDarkBlue,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'K A T I   Z E R O',
                      style:
                      GoogleFonts.poppins(
                        fontSize: 25.px,
                        fontWeight: FontWeight.w400,
                        // height: 30/2.px,
                        color: CustomColor.customWhite,)),
                          // 'KATI ZERO',
                          // style: CustomFonts.splachHed,
                            // style: Theme.of(context).textTheme.displayLarge,

                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          height: 35.h,
                          width: 35.w,
                          child: Image(
                            image: AssetImage('assets/images/logo.png'),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text('P O W E R  B Y',
                          style:
                          GoogleFonts.poppins(
                            fontSize: 20.px,
                            fontWeight: FontWeight.w500,
                            // height: 30/2.px,
                            color: CustomColor.customWhite,
                          // CustomFonts.splachbot1,
                          // TextStyle(
                          // fontSize: 20,),
                            ),),
                        Text('T E C H  I D A R A',
                            style:
                            GoogleFonts.poppins(
                              fontSize: 25.px,
                              fontWeight: FontWeight.w600,
                              // height: 30/2.px,
                              color: CustomColor.cutomDarkBlue,))
                      ]),
                ),
              ),
            ],
          ) // CustomSplachContainer(),
          // CustomSplachContainer(),
          ),
    );
  }
}
