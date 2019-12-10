import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/images/login_back.jpg',
            fit: BoxFit.fill,
            color: Colors.black54,
            colorBlendMode: BlendMode.darken,
            width: size.width,
            height: size.height,
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 360.0,
                          width: 400.0,
                          padding: EdgeInsets.symmetric(
                            horizontal: 30.0,
                            vertical: 25.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/images/logo.png'),
                              Padding(
                                padding: EdgeInsets.only(top: 20.0),
                              ),
                              TextField(
                                autocorrect: false,
                                autofocus: false,
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                                decoration: InputDecoration(
                                    hintText: "Username",
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.all(15.0)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20.0),
                              ),
                              TextField(
                                obscureText: true,
                                autocorrect: false,
                                autofocus: false,
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.all(15.0)),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 20.0, bottom: 5.0),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  debugPrint("Click Login");
                                },
                                minWidth: 250.0,
                                color: Colors.red[800],
                                padding: EdgeInsets.symmetric(
                                  vertical: 12.0,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red[800])),
                                child: new Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
