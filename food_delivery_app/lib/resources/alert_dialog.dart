import 'package:flutter/material.dart';

class Dialogs {

  static void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
               Radius.circular(20.0),
            ),
          ),
          title: const Text('Alert Dialog', style: TextStyle(color: Colors.orange)),
          content: const Text('This is an alert dialog.', style: TextStyle(color: Colors.orange)),
          actions: <Widget>[
            TextButton(
              child: const Text('OK', style: TextStyle(color: Colors.orange),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}