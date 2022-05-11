import 'dart:async';

import 'package:final_project/RegisterScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( Weclomee());
}

class Weclomee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                RegisterScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(

      backgroundColor: Color(0xFF33907C),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/logo.jpg'),
            ),
            Text(
              'My Task',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
            ),
          ],
        ),
        //
        // appBar: AppBar(title:Text("GeeksForGeeks")),
        // body: Center(
        //     child:Text("Home page",textScaleFactor: 2,)
        // ),
      ),
    );

    // return Container(
    //     color: Colors.white,
    //     child: Column(children: [
    //       Text("Hiiii") ,
    //       Text("Hiiii2") ,
    //     ],)
    //
    //
    //    // FlutterLogo(size:MediaQuery.of(context).size.height)
    // );
  }
}