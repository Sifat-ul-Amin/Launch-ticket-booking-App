import 'package:flutter/material.dart';
import 'package:launch_app/services/AuthenticationServie.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String _email, _password;

  _submit() async {
    String message = await context
        .read<AuthenticaitonService>()
        .createUser(_email.trim(), _password.trim());
    if (message == 'success') {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Launch booking"),
      ),
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                height: 635,
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
                            "USER REGISTRATION",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          "Enter all required information",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 10),
                        child: TextField(
                          onChanged: (val) {
                            _email = val;
                          },
                          decoration: InputDecoration(labelText: "Name:"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 10),
                        child: TextField(
                          obscureText: true,
                          onChanged: (val) {
                            _password = val;
                          },
                          decoration:
                              InputDecoration(labelText: "Phone number:"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 10),
                        child: TextField(
                          onChanged: (val) {
                            _email = val;
                          },
                          decoration: InputDecoration(labelText: "Email:"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 10),
                        child: TextField(
                          obscureText: true,
                          onChanged: (val) {
                            _password = val;
                          },
                          decoration: InputDecoration(
                            labelText: "Password:",
                          ),
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
                          child: ElevatedButton(
                            // shape: StadiumBorder(),
                            // shape: RoundedRectangleBorder(borderRadius: b),
                            // color: Colors.green[400],
                            child: Text(
                              "SIGN UP",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            onPressed: () {
                              _submit();
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
