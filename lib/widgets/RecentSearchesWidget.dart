import 'package:feel_frre_music_ui/models/NewReleaseModel.dart';
import 'package:flutter/material.dart';

class RecentSearchesWidget extends StatelessWidget {
  final List<NewReleaseModel> images;
  final String title;
  final double imageHeight;
  final double imageWidth;

  RecentSearchesWidget({
    this.images,
    this.title,
    this.imageHeight,
    this.imageWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF110554)
                    ),
                  ),
                  GestureDetector(
                      onTap: () => print('View $title'),
                      child: Text("See All",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                              fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            Container(
              color: Colors.green,
              height: imageHeight + 60,
              child: ListView.builder(
                  itemCount: 200,
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 100,
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[],
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
