import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/assets/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/widget/genre_card.dart';
import 'package:movie_app/widget/movie_card.dart';



class homemenu extends StatelessWidget {

  final double widthCatagories;
  final double widthCatagoryBox;
  final double textSize;
  final double imagesHeight;
  final double imagesWidth;

  homemenu({required this.widthCatagories, required this.widthCatagoryBox, required this.textSize, required this.imagesHeight, required this.imagesWidth});


  var movies = [
    movie_card(movie_id: "assets/infinitywar.jpg", title: "Infinity War",),
    movie_card(movie_id: "assets/topgun.jpg", title: "Top Gun Maverick",),
    movie_card(movie_id: "assets/yourname.jpg", title: "Your Name",),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Hello", style: GoogleFonts.lato(
                          fontSize: textSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurpleAccent
                      ),),
                      Text(" Hasan", style: GoogleFonts.lato(
                          fontSize: textSize,
                          color: Colors.deepPurpleAccent
                      )),
                      Spacer(),
                      Icon(
                          Icons.movie_filter
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text("Lets watch together", style: GoogleFonts.lato(
                          color: hexGrayLight,
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                      ),),
                    ),
                  )
                ],

              )
          ),
        ), //Top Text + Dark Mode Button
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText:"Search for movies",
                    hintStyle: GoogleFonts.lato(color: hexGrayLight),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("Categories", style: GoogleFonts.lato(color: hexGrayDark, fontSize: textSize, fontWeight: FontWeight.bold)),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text("See All", style: GoogleFonts.lato(color: hexGrayLight, fontSize:16, fontWeight: FontWeight.w500),),
                )
              ],
            ),
            Padding( //Catagory Boxes
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: genre_card(name: "Action", icon: "assets/icons/swords.png", iconsize: widthCatagories, boxsize: widthCatagoryBox,),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: genre_card(name: "Comedy", icon: "assets/icons/comedy.png",iconsize: widthCatagories, boxsize: widthCatagoryBox),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: genre_card(name: "Sci-Fi", icon: "assets/icons/scifi.png",iconsize: widthCatagories, boxsize: widthCatagoryBox),
                  ),
                ],
              ),
            )
          ],
        ), //Search Box and Catagory Boxes
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Movies", style: GoogleFonts.lato(color: hexGrayDark, fontSize: textSize, fontWeight: FontWeight.bold)),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("See All", style: GoogleFonts.lato(color: hexGrayLight, fontSize:16, fontWeight: FontWeight.w500),),
              )
            ],
          ),
        ),//New Movies Text
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            height: imagesHeight,
            width: imagesWidth,
            child: CarouselSlider.builder(
              itemCount: 3,
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.7,
                enableInfiniteScroll: false,
                viewportFraction: 0.75,
                enlargeCenterPage: true,
              ),
              itemBuilder: (context, index, realIndex){
                return(movies[index]);
              },
            ),
          ),
        ), //Images of Movies
      ],
    );
  }
}
