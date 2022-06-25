import 'package:flutter/material.dart';

class movie_card extends StatelessWidget {

  final String? movie_id;
  final String? title;

  const movie_card({this.movie_id, this.title});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        //height: 450,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)
            ),
            image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(movie_id!),
            )
        ),
      ),
    );
  }
}

