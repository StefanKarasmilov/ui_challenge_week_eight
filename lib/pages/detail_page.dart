import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge_week_eight/model/animal.dart';


class DetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final animal = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [

              _detailContent(size, animal),

              _goBackButton(context),

            ],
          ),
        ),
      )
   );
  }

  Widget _goBackButton(BuildContext context) {

    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Icon(Icons.arrow_back, size: 80, color: Colors.white,),
    );

  }

  Widget _detailContent(Size size, Animal animal) {

    return Column(
      children: [

        _head(size, animal),

        _description(animal),

        _soundButton(animal),

      ],
    );

  }

  Widget _head(Size size, Animal animal) {

    return Hero(
      tag: animal.name,
      child: Container(
        height: size.height * 0.45,
        padding: EdgeInsets.all(50),
        child: SvgPicture.asset(animal.photo),
        decoration: BoxDecoration(
          color: animal.color,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              color: animal.color.withOpacity(0.8),
              offset: Offset(0, 5),
              blurRadius: 15,
              spreadRadius: 5
            )
          ]
        ),
      ),
    );

  }

  Widget _description(Animal animal) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            animal.name,
            style: GoogleFonts.comicNeue(
              textStyle: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900
              )
            ),
          ),

          SizedBox(height: 20,),

          Text(
            animal.description,
            style: GoogleFonts.comicNeue(
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                height: 1.8
              )
            ),
          ),

        ],
      ),
    );

  }

  Widget _soundButton(Animal animal) {

    return Container(
      margin: EdgeInsets.all(16),
      height: 80,
      width: double.infinity,
      child: Icon(Icons.headset, size: 90, color: Colors.white.withOpacity(0.8),),
      decoration: BoxDecoration(
        color: animal.color,
        borderRadius: BorderRadius.circular(30)
      ),
    );

  }

}