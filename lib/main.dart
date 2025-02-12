import 'package:flutter/material.dart';
import 'package:kati_zero/core/utils/app_%20routes.dart';
import 'package:kati_zero/presentation/home_screen/home_vm.dart';
import 'package:kati_zero/presentation/splach_screen/splach_vm.dart';
import 'package:kati_zero/theme/custom_color.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('gameBox'); // Open Hive box
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplachVm()),
        ChangeNotifierProvider(create: (_) => HomeVm()),
      ],
      child: ResponsiveSizer(
        builder: (context, orientation, screenType) => const MyApp(),
      )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
//       theme: ThemeData(
//         textTheme: TextTheme(
//           // Splach Screen  (KATI ZERO)
//           displayLarge: GoogleFonts.poppins(
//             fontSize: 35.px,
//             fontWeight: FontWeight.w400,
//             height: 52.5.px,
//             color: CustomColor.customWhite,
//             letterSpacing: 52.px,
//           ),
//           //POWERED BY
//           displayMedium: GoogleFonts.poppins(
//             fontSize: 20.px,
//             fontWeight: FontWeight.w500,
//             height: 30.px,
//             color: CustomColor.customWhite,
//             letterSpacing: 52.px,
//           ),
//           // TECH IDARA
//           bodyLarge: GoogleFonts.poppins(
//             fontSize: 20.px,
//             fontWeight: FontWeight.w500,
//             height: 30.px,
//             color: CustomColor.cutomDarkBlue,
//             letterSpacing: 52.px,
//           ),
//           // For Home page  (vs Text)
//           bodyMedium: GoogleFonts.poppins(
//             fontSize: 40.px,
//             fontWeight: FontWeight.w700,
//             height: 60.px,
//             color: CustomColor.customLightGrey,
//             letterSpacing: 24.px,
//           ),
//           // player 1 and player 2
//           labelLarge: GoogleFonts.poppins(
//             fontSize: 25.px,
//             fontWeight: FontWeight.w600,
//             height: 37.5.px,
//             color: CustomColor.customDarkGrey,
//             letterSpacing: 22.px,
//           ),
//           // leaderboard  container text
//           labelSmall: GoogleFonts.poppins(
//             fontSize: 18.px,
//             fontWeight: FontWeight.w600,
//             // height: 27.px,
//             color: CustomColor.customWhite,
//             letterSpacing: 22.px,
//           ),
//
//           // Winning Continer Player 1 text;
//           labelMedium: GoogleFonts.poppins(
//             fontSize: 20.px,
//             fontWeight: FontWeight.w400,
//             height: 30.px,
//             color: CustomColor.customWhite,
//             letterSpacing: 22.px,
//           ),
//
//           // Winning Continer (Won) text;
//          displaySmall : GoogleFonts.poppins(
//             fontSize: 40.px,
//             fontWeight: FontWeight.w700,
//             height: 60.px,
//             color: CustomColor.customWhite,
//             letterSpacing: 22.px,
//           ),
//
// //  LEADER BOARD (LEADER)
//           headlineMedium : GoogleFonts.poppins(
//             fontSize: 25.px,
//             fontWeight: FontWeight.w700,
//             height: 15.12.px,
//             color: CustomColor.cutomDarkBlue,
//             letterSpacing: 30.px,
//           ),
//            //BOARD
//           headlineLarge : GoogleFonts.poppins(
//             fontSize: 25.px,
//             fontWeight: FontWeight.w700,
//             height: 15.12.px,
//             color: CustomColor.cutomDarkBlue,
//             letterSpacing: 30.5.px,
//           ),
//           //BOARD
//           headlineSmall : GoogleFonts.poppins(
//             fontSize: 20.px,
//             fontWeight: FontWeight.w600,
//             height: 30.px,
//             color: CustomColor.cutomDarkBlue,
//             letterSpacing: 22.5.px,
//           ),
//         ),
//       ),
      initialRoute: AppRoutes.Splach_screen,
      onGenerateRoute: AppRoutes.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
