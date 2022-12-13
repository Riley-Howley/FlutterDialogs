import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

//testign t
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future successDialog() => showDialog(
          context: context,
          builder: (context) => Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(70, 244, 244, 244),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(80),
                          bottomRight: Radius.circular(80),
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        )),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 5,
                    child: Icon(
                      Iconsax.tick_circle,
                      color: Colors.green,
                      size: 124,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Container(
                      child: Text(
                        "Success",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Success! Job has successfully been completed!",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          )),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Ok",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );

    Future warningDialog() => showDialog(
          context: context,
          builder: (context) => Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(70, 244, 244, 244),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(80),
                          bottomRight: Radius.circular(80),
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        )),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 5,
                    child: Icon(
                      Iconsax.warning_2,
                      color: Colors.orange,
                      size: 124,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Container(
                      child: Text(
                        "Success",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Warning! A user is already editing this job. Please try again in 2 minutes",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          )),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Ok",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );

    Future errorDialog() => showDialog(
          context: context,
          builder: (context) => Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(70, 244, 244, 244),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(80),
                          bottomRight: Radius.circular(80),
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        )),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 5,
                    child: Icon(
                      Iconsax.close_circle,
                      color: Colors.red,
                      size: 124,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Container(
                      child: Text(
                        "Error",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Error! An error has occured. Please try again",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          )),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Ok",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                successDialog();
              },
              child: Text("Success"),
            ),
            ElevatedButton(
              onPressed: () {
                errorDialog();
              },
              child: Text("Error"),
            ),
            ElevatedButton(
              onPressed: () {
                warningDialog();
              },
              child: Text("Warning"),
            ),
          ],
        ),
      ),
    );
  }
}
