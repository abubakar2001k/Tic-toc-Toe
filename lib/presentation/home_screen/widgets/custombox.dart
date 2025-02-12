import 'package:flutter/cupertino.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class Custombox extends StatelessWidget {
  final String? assetImage;
  const Custombox({super.key, this.assetImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:17.h,
      width: 17.w,
      child: Image(image: AssetImage(assetImage!)),
    );
  }
}
