import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:movie_app/main.dart';
import 'package:movie_app/pages/settings.dart';
import 'package:movie_app/assets/colors.dart';



class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  _HiddenDrawerState createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {

  List<ScreenHiddenDrawer> _pages = [];

  final TextStyle textStyle = GoogleFonts.lato(
    color: hexWhite,
    fontSize: 20,
    fontWeight: FontWeight.bold,

  );

  @override
  void initState(){
    super.initState();

    _pages = [
      ScreenHiddenDrawer(ItemHiddenMenu(
        name: "Homepage",
        baseStyle: textStyle,
        selectedStyle: TextStyle(),
        colorLineSelected: Colors.redAccent
      ),
      mainpage(),),
      ScreenHiddenDrawer(ItemHiddenMenu(
          name: "Settings",
          baseStyle: textStyle,
          selectedStyle: TextStyle(),
          colorLineSelected: Colors.redAccent
      ),
      settings(),)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(screens: _pages,
      disableAppBarDefault: true,
      backgroundColorMenu: hexRedDark,
      initPositionSelected: 0,
      slidePercent: 40,
      contentCornerRadius: 15,

    );
  }
}
