import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileItemModel {
  IconData icon;
  String title;
  bool isBullet;
  int number;
  Color color;

  ProfileItemModel(
      IconData icon, String title, bool isBullet, int number, Color color) {
    this.icon = icon;
    this.title = title;
    this.isBullet = isBullet;
    this.number = number;
    this.color = color;
  }
}

List<ProfileItemModel> profileList = [
  ProfileItemModel(
      Icons.person_add, "Follower", true, 15, Color(0xFF0be5af)),
  ProfileItemModel(
      Icons.person_outline, "Following", true, 120, Color(0xFFffa904)),
  ProfileItemModel(
     Icons.collections, "My Collection", false, 0, Color(0xFFda4453)),
  ProfileItemModel(
      Icons.playlist_play, "Playlist", false, 0, Color(0xFF00c6fb)),
  ProfileItemModel(
      Icons.recent_actors, "Recently Played", false, 0, Color(0xFF89216b)),
];
