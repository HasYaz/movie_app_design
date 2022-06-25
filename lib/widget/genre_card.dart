import 'package:flutter/material.dart';
import 'package:movie_app/assets/colors.dart';
import 'package:google_fonts/google_fonts.dart';


class genre_card extends StatelessWidget {

  final String? icon;
  final String? name;
  final double? iconsize;
  final double? boxsize;

  const genre_card({this.icon, this.name, this.iconsize, this.boxsize});

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 30),
      height: boxsize,
      width: boxsize,
      decoration: BoxDecoration(
          color: hexBlueLight,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: Image(image: AssetImage(icon!), height: iconsize, width: iconsize, color: hexGrayDark,)
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(name!, style: GoogleFonts.lato(color: hexGrayLight, fontWeight: FontWeight.bold, fontSize: 15),),
          ),
        ],
      )
    );
  }
}
