import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/frame': (BuildContext context) => const WelcomeScreen(),
        }
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    startTimer();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Image(image: AssetImage("assets/images/welcome_img.png")),
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03),
              child: Text("SCS Pay",
              style: TextStyle(
                fontSize: SizeConfig.blockSizeHorizontal*9.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Robot_Bold',
                color:CommonColor.APP_NAME_COLOR
              ),),
            )
          ],
        ),
      ),
    );
  }

  void navigateParentPage() {
    Navigator.of(context).pushReplacementNamed('/frame');
  }

  startTimer() {
    var durtaion = new Duration(seconds: 5);
    return Timer(durtaion, navigateParentPage);
  }

}
