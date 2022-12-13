import 'package:flutter/material.dart';
import 'Dialogs/error_dialog.dart';
import 'Dialogs/success_dialog.dart';
import 'Dialogs/warning_choice_dialog.dart';
import 'Dialogs/warning_dialog.dart';

//testign t
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                successDialog(context, "This is a test of the success");
              },
              child: Text("Success"),
            ),
            ElevatedButton(
              onPressed: () {
                errorDialog(context, "Error! This is a test of the error");
              },
              child: Text("Error"),
            ),
            ElevatedButton(
              onPressed: () {
                warningDialog(
                    context, "Warning! This is a test of the warning");
              },
              child: Text("Warning"),
            ),
            ElevatedButton(
              onPressed: () {
                warningChoiceDialog(
                    context, "Warning! This is a test of the warning Choices");
              },
              child: Text("Warning Choices"),
            ),
          ],
        ),
      ),
    );
  }
}
