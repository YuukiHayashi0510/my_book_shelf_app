import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class InAppNotification {
  InAppNotification._({
    required this.context,
    required this.message,
    required this.color,
    this.textColor = Colors.white,
  }) {
    FToast fToast = FToast();
    fToast.init(context);
    fToast.showToast(
        child:
            ToastTemplate(message: message, color: color, textColor: textColor),
        gravity: ToastGravity.TOP,
        toastDuration: const Duration(seconds: 5));
  }

  final BuildContext context;
  final String message;
  final Color color;
  Color textColor;

  factory InAppNotification.info(BuildContext context, String message) =>
      InAppNotification._(
        context: context,
        message: message,
        color: Colors.blue,
        textColor: Colors.white,
      );

  factory InAppNotification.warn(BuildContext context, String message) =>
      InAppNotification._(
          context: context,
          message: message,
          color: Colors.yellow,
          textColor: Colors.black);

  factory InAppNotification.success(BuildContext context, String message) =>
      InAppNotification._(
          context: context,
          message: message,
          color: Colors.green,
          textColor: Colors.white);

  factory InAppNotification.error(BuildContext context, String message) =>
      InAppNotification._(
        context: context,
        message: message,
        color: Colors.red,
        textColor: Colors.white,
      );
}

class ToastTemplate extends StatelessWidget {
  const ToastTemplate({
    Key? key,
    required this.message,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  final String message;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 12.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: color,
      ),
      child: Text(
        message,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
