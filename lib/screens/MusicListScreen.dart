import 'package:feel_frre_music_ui/models/NewReleaseModel.dart';
import 'package:feel_frre_music_ui/widgets/NewReleaseeWidget.dart';
import 'package:feel_frre_music_ui/widgets/SingerListWidget.dart';
import 'package:feel_frre_music_ui/widgets/TrendingNowWidget.dart';
import 'package:flutter/material.dart';

class MusicListScreen extends StatefulWidget {
  @override
  _MusicListScreenState createState() => _MusicListScreenState();
}

class _MusicListScreenState extends State<MusicListScreen> {
  final List<String> categories = ["Romance", "Party", "Happy", "Events"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(color: Colors.white, height: 81, child: _buildItems()),
            SizedBox(height: 30),
            _buildNewReleases(),
            SizedBox(height: 40),
            _buildTrendingNow(),
            SizedBox(height: 20),
            _buildSinger()
          ],
        ));
  }

  Widget _buildItems() {
    return Container(
      height: 80.0,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(left: 10.0, bottom: 10, top: 10),
            width: 110.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage("assets/images/bands.jpg"),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                    Colors.red.withOpacity(0.2), BlendMode.dstATop),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF89216b),
                  Color(0xFF110554),
                ],
              ),
            ),
            child: Center(
              child: Text(
                categories[index].toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.8,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildNewReleases() {
    return NewReleaseeWidget(
      images: newReleaseList,
      title: 'New Releases',
      imageHeight: 130.0,
      imageWidth: 100.0,
    );
  }

  Widget _buildTrendingNow() {
    return TrendingNowWidget(
      images: newReleaseList,
      title: 'Trending Now',
      imageHeight: 180.0,
      imageWidth: 150.0,
    );
  }


  Widget _buildSinger(){
    return SingerListWidget(images: newReleaseList,
      title: 'Artist',
      imageHeight: 150.0,
      imageWidth: 120.0);
  }
}
