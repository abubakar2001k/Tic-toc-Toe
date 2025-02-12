import 'package:flutter/cupertino.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomContainer extends StatelessWidget {
  final double? height;
  final double? width;
  // final Color? color;
  final Widget? widget;
  final Decoration? decoration;
  const CustomContainer({super.key, this.height,
    // this.color,
    this.width, this.widget, this.decoration});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 52.h,
      width: width ??  double.infinity,
      decoration:decoration ,
      child: widget,

    );
  }
}
