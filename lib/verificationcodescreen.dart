import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:launch_app/home.dart';

class Vcs extends StatefulWidget {
  @override
  _VcsState createState() => _VcsState();
}

class _VcsState extends State<Vcs> {
  String Code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verify"),
      ),
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                height: 400,
                width: 350,
                alignment: Alignment.center,

                // color: Colors.black26,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(52),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[600],
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ],
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "Verification code",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 30),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 10),
                        child: TextField(
                          onChanged: (val) {
                            Code = val;
                          },
                          decoration: InputDecoration(labelText: "CODE:"),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 30),
                        child: Container(
                          height: 55,
                          width: 199,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19)),
                          child: RaisedButton(
                            shape: StadiumBorder(),
                            // shape: RoundedRectangleBorder(borderRadius: b),
                            color: Colors.green[400],
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            onPressed: () {
                              MaterialPageRoute(builder: (context) => Home());
                            },
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
