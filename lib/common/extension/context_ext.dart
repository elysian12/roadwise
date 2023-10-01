import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

extension ContextExt on BuildContext {
  TextTheme get textTheme {
    return Theme.of(this).textTheme;
  }

  void showSnackbar(String message, {bool isError = false}) {
    ScaffoldMessenger.of(this).clearSnackBars();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text(message),
        backgroundColor:
            isError ? AppColors.errorColor : AppColors.primaryYelloColor,
      ),
    );
  }

  void showSuccessDialog(int riskScore, String result) {
    // QuickAlert.show(
    //   context: this,
    //   type: riskScore < 75 ? QuickAlertType.success : QuickAlertType.error,
    //   text: 'Your Risk score is $riskScore\n$result',
    // );
  }
}
