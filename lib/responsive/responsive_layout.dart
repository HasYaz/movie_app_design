import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/widget/homemenu.dart';


class ResponsiveLayout extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if (constraints.maxWidth < 600) {
            return homemenu(
              widthCatagories: 40,
              widthCatagoryBox: 90,
              textSize: 25,
              imagesHeight: 300,
              imagesWidth: 250,
            );
      }
          else {
            return homemenu(
                widthCatagories: 100,
              widthCatagoryBox: 200,
              textSize: 50,
              imagesHeight: 600,
              imagesWidth: 550,
            );
      }
    });
  }
}
