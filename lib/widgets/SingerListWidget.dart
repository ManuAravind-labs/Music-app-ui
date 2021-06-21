import 'package:flutter/cupertino.dart';
import 'package:feel_frre_music_ui/models/NewReleaseModel.dart';
import 'package:flutter/material.dart';

class SingerListWidget extends StatelessWidget {
  final List<NewReleaseModel> images;
  final String title;
  final double imageHeight;
  final double imageWidth;

  SingerListWidget({
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
                      fontWeight: FontWeight.bold,
color: Color(0xFF110554)

                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: imageHeight,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return 
                      Container(
                          height: 100,
                          padding: EdgeInsets.all(10),
                          width: 100,
                          child: Column(
                            children: <Widget>[
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40.0),
                                    child: Image(
                                      width: 80,
                                      height: 80,
                                      image: AssetImage(images[index].image),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(images[index].title,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Color(0xFF110554))),
                                  SizedBox(height: 10),
                                ],
                              )
                            ],
                          ),
                        );
                     
                },
              ),
            ),
          ],
        ));
  }
}
