import 'package:flutter/material.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  String from, to, date;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Launch booking"),
      ),
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                height: 550,
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
                          padding: const EdgeInsets.all(7),
                          child: Text(
                            "LAUNCH INFORTAMION",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 13),
                        child: Text(
                          "Enter  where and when you wnat to travel",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 10),
                        child: TextField(
                          onChanged: (val) {
                            from = val;
                          },
                          decoration: InputDecoration(labelText: "from:"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 20),
                        child: TextField(
                          obscureText: true,
                          onChanged: (val) {
                            to = val;
                          },
                          decoration: InputDecoration(labelText: "to:"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 10),
                        child: TextField(
                          onChanged: (val) {
                            from = val;
                          },
                          decoration: InputDecoration(labelText: "date:"),
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
                              "Search",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            onPressed: () {},
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
