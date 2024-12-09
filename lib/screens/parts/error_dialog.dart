import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Future<void> error_dialog({required BuildContext context, required String title, required String content}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(backgroundColor: Colors.blueGrey.withOpacity(0.3), title: Text(title), content: Text(content));
    },
  );
}
