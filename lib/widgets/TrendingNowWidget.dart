import 'package:flutter/cupertino.dart';
import 'package:feel_frre_music_ui/models/NewReleaseModel.dart';
import 'package:flutter/material.dart';

class TrendingNowWidget extends StatelessWidget {
  final List<NewReleaseModel> images;
  final String title;
  final double imageHeight;
  final double imageWidth;

  TrendingNowWidget({
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
            SizedBox(height: 10,),
            Container(
              height: imageHeight,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: <Widget>[
                      Card(
                        color: Colors.white,
                        elevation: 3.0,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Container(
                          height: 120,
                          padding: EdgeInsets.all(10),
                          width: 350,
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image(
                                  width: 100,
                                  height: 100,
                                  image: AssetImage(images[index].image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Lambergini",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Color(0xFF110554))),
                                  SizedBox(height: 10),
                                  Text("Lambergini so and so...",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.grey)),
                                  SizedBox(height: 10),
                                  Text("4099990034 plays",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.red))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 25,
                          right: 50,
                          child: SizedBox(
                            width: 45,
                            height: 45,
                            child: RawMaterialButton(
                              padding: EdgeInsets.all(10.0),
                              elevation: 12.0,
                              onPressed: () => print('Play Video'),
                              shape: CircleBorder(),
                              fillColor: Colors.pink,
                              child: Icon(
                                Icons.play_arrow,
                                size: 25.0,
                                color: Colors.white,
                              ),
                            ),
                          ))
                    ],
                  );
                },
              ),
            ),
          ],
        ));
  }
}
