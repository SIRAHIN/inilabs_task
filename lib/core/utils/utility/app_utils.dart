import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class AppUtils {
  AppUtils._();

  ///
  /// error toast
  static void errorToast({required String message, ToastGravity? gravity}) {
    Fluttertoast.showToast(
      msg: message,
      gravity: gravity ?? ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_LONG,
       textColor: Colors.white,
       backgroundColor: Colors.red,
    );
  }

  ///
  /// success toast
  static void successToast({required String message}) {
    Fluttertoast.showToast(
      msg: message,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_LONG,
      // textColor: whiteTextColor,
      // backgroundColor: greenBgColor,
    );
  }
}
