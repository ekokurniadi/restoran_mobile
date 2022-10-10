import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:restoran_mobile/core/helpers/theme_helper.dart';

class ToastHelper {
  const ToastHelper._();

  static Future<void> toastSuccess(String message) async {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: ThemeHelper.primaryColor,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_LONG,
    );
  }

  static Future<void> toastError(String message) async {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.red,
      gravity: ToastGravity.BOTTOM,
      toastLength: Toast.LENGTH_LONG,
    );
  }
}
