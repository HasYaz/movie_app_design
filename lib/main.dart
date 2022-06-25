
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/pages/hidden_drawer.dart';
import 'package:movie_app/responsive/responsive_layout.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/assets/colors.dart';



void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HiddenDrawer(),
    )
  );
}



class mainpage extends StatefulWidget {
  const mainpage ({Key? key}) : super(key: key);



  @override
  State<mainpage> createState() => _mainpageState();
}



class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ResponsiveLayout(),
      backgroundColor: hexWhite,
    );
  }


}
