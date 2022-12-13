import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

Future successDialog(BuildContext context, String message) => showDialog(
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
                      "${message}",
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
