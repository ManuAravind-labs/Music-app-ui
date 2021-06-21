import 'dart:async';
import 'package:feel_frre_music_ui/screens/login/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xff89216b)
    ));
    return MaterialApp(
      title: 'Flutter Demo',
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor: Colors.blue[500],
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/LaunchScreen': (BuildContext context) => LoginScreen()
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = Duration(seconds: 2);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/LaunchScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Center(
          child: new Image.asset(
            'assets/images/splash.jpg',
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,
          ),
        ),
        Container(
            decoration: BoxDecoration(
              color: Color(0xff89216b).withOpacity(0.8),
            ),
           ),
        Center(
          child: Text("Feel Music", style: TextStyle(color:Colors.white, fontSize: 25, fontWeight: FontWeight.bold, decoration: TextDecoration.none))
        )
      ],
    );
  }
}
