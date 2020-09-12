import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomCard extends StatelessWidget {
  
  final String title;
  final String subtitle;
  final Color color;
  final String svgImage;

  const CustomCard({
    Key key, 
    @required this.title, 
    @required this.subtitle, 
    @required this.svgImage,
    this.color = Colors.white, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        height: 280,
        color: Colors.transparent,
        child: Stack(
          children: [

            _card(size),

            _shadow(),

            _picture(),

          ],
        ),
      ),
    );

  }

  Align _card(Size size) {

    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: 250,
        width: size.width * 0.75,
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.8),
              offset: Offset(0, 5),
              blurRadius: 10,
              spreadRadius: 2
            )
          ]
        ),
        child: Container(
          margin: EdgeInsets.only(left: 110, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _title(),
              _subtitle()
            ],
          ),
        ),
      ),
    );

  }

  Widget _title() {

    return Text(
      this.title,
      style: GoogleFonts.comicNeue(
        textStyle: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 50,
          color: Colors.white
        )
      ), 
    );

  }

  Widget _subtitle() {

    return Text(
      this.subtitle,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.comicNeue(
        textStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: Colors.white,
          height: 2
        )
      )
    );

  }

  Container _picture() {

    return Container(
      width: 180,
      child: SvgPicture.asset(this.svgImage),
    );

  }

  Widget _shadow() {

    return Positioned(
      bottom: 40,
      left: 30,
      child: Container(
        height: 40,
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 5),
              blurRadius: 25,
              spreadRadius: 5
            )
          ]
        ),
      ),
    );

  }

}