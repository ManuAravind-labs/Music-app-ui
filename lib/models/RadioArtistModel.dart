
import 'package:flutter/material.dart';

class RadioArtistModel {
   String title;
   String image;
   Color color;
  RadioArtistModel(String title, String image, Color color){
    this.title = title;
    this.image = image;
    this.color = color;
  }
}


final List<RadioArtistModel> radioArtistList = [
  RadioArtistModel('Shreya Ghoshal', "assets/images/shreya.jpg",Color(0xFF110554)),
  RadioArtistModel('A R Rahman', "assets/images/rahman.jpg",Color(0xFFda4453)),
  RadioArtistModel('Sunidhi chauhan', "assets/images/sunidhi.jpg",Color(0xFF89216b) ),
  RadioArtistModel('Shan', "assets/images/shan.jpg", Color(0xFF00c6fb)),
  RadioArtistModel('Sonu Nigam', "assets/images/sonu.jpg",Color(0xFFff8359) ),

   RadioArtistModel('Neha Kakkar', "assets/images/neha.jpg",Color(0xFF2cbfc7)),
  RadioArtistModel('Honey Singh', "assets/images/honey.jpg",Color(0xFF0be5af) ),
  RadioArtistModel('Arjit Singh', "assets/images/arjit.jpg", Color(0xFFffa904)),
  RadioArtistModel('Sonu Nigam', "assets/images/sonu.jpg",Color(0xFFff8359) )
];













Color primary = const Color(0xFF110554);
Color primarybar = const Color(0xFFda4453);
Color colorAccent = const Color(0xFF89216b);
Color blueLight = const Color(0xFF00c6fb);
Color blueDark = const Color(0xFF005bea);
Color redLight = const Color(0xFF110554);
Color greenLight = const Color(0xFF0be5af);
Color greenDark = const Color(0xFF2cbfc7);
Color orangeLight = const Color(0xFFffa904);
Color orangeDark = const Color(0xFFff8359);