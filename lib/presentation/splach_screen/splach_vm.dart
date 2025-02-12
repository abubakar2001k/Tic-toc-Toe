import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:kati_zero/core/utils/app_%20routes.dart';

class SplachVm extends ChangeNotifier {
  bool _isLoading = true;

  bool get isLoading => _isLoading;

  void startTimer(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      _isLoading = false;
      notifyListeners();
      Navigator.pushNamed(context, AppRoutes.Home_screen);
    });
  }
}
