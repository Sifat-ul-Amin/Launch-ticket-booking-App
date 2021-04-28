import 'package:flutter/material.dart';

class blank extends StatefulWidget {
  @override
  _blankState createState() => _blankState();
}

class _blankState extends State<blank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // color: Colors.blue,
          height: 400,
          width: 300,
          child: Column(children: [
            Icon(
              Icons.sailing_rounded,
              size: 80,
            ),
            Container(
              color: Colors.amber,
              height: 300,
              width: 300,
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(41),
                  child: Text(
                    "LAUNCH TICKET BOOKING",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
