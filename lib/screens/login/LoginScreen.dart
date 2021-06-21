import 'package:feel_frre_music_ui/screens/DashboardScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            SizedBox(height: 60),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/headphone.png'),
                    width: 60,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10, right: 2),
                      child: Text("Feel",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFF110554)))),
                  Padding(
                      padding: EdgeInsets.all(0),
                      child: Text("Music",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                              color: Color(0xFF110554)))),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.only(left: 10, top: 20, bottom: 20, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Sign up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color(0xFF110554))),
                      SizedBox(height: 10),
                      Text("Fill below details and feel great music",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Colors.grey))
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 20, top: 20, bottom: 5),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.mail,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      child: Container(
                          color: Colors.white,
                          child: TextField(
                            style: TextStyle(fontSize: 15),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Email Address'),
                          ),
                          height: 40))
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 20, top: 20, bottom: 5),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      child: Container(
                          color: Colors.white,
                          child: TextField(
                            style: TextStyle(fontSize: 15),
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: 'Username'),
                          ),
                          height: 40))
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 20, top: 20, bottom: 5),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.lock,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      child: Container(
                          color: Colors.white,
                          child: TextField(
                            style: TextStyle(fontSize: 15),
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: 'Password'),
                          ),
                          height: 40))
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 20, top: 20, bottom: 5),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.lock,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      child: Container(
                          color: Colors.white,
                          child: TextField(
                            style: TextStyle(fontSize: 15),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Confirm Password'),
                          ),
                          height: 40))
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 2,
            ),
            SizedBox(height: 40),
            SizedBox(
                width: double.infinity,
                child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DashboardScreen()),
                        );
                      },
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: <Color>[
                                Color(0xFF110554),
                                Color(0xFF281d65),
                                Color(0xFF585087),
                              ],
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(80.0))),
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: const Text('SIGN UP',
                            style: TextStyle(fontSize: 16)),
                      ),
                    ))),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Already have an account?",
                    style: TextStyle(fontSize: 14, color: Colors.grey)),
                SizedBox(width: 5),
                Text("Sign in",
                    style: TextStyle(fontSize: 14, color: Color(0xFF110554)))
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
