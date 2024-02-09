import 'package:flutter/material.dart';

Future<dynamic> dialogg(
  BuildContext context, {
  required String title,
  required String content,
  IconData icon = Icons.close,
  bool barrierDismissible = true,
  VoidCallback? onPressed,
}) {
  return showDialog(
    barrierDismissible: barrierDismissible,
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        IconButton(
          icon: Icon(icon),
          onPressed: onPressed ?? () => Navigator.pop(context),
        ),
      ],
    ),
  );
}

Future<dynamic> errorDialogg(
  BuildContext context, {
  String title = "Error",
  required String content,
  bool barrierDismissible = true,
  VoidCallback? onPressed,
}) {
  return showDialog(
    barrierDismissible: barrierDismissible,
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: onPressed ?? () => Navigator.pop(context),
        ),
      ],
    ),
  );
}

Future<dynamic> successDialogg(
  BuildContext context, {
  String title = "Success",
  required String content,
  bool barrierDismissible = true,
  VoidCallback? onPressed,
}) {
  return showDialog(
    barrierDismissible: barrierDismissible,
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.arrow_forward),
          onPressed: onPressed ?? () => Navigator.pop(context),
        ),
      ],
    ),
  );
}
