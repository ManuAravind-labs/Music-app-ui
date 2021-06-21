import 'package:feel_frre_music_ui/models/NewReleaseModel.dart';
import 'package:flutter/material.dart';

class NewReleaseeWidget extends StatelessWidget {
  final List<NewReleaseModel> images;
  final String title;
  final double imageHeight;
  final double imageWidth;

  NewReleaseeWidget({
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
          height: imageHeight+60,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 10.0,
                    ),
                    width: imageWidth+40,
                    height: imageHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          offset: Offset(0.0, 4.0),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: AssetImage(images[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(images[index].title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xFF110554))),
                   Text(images[index].singer,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey)),       
                ],
              );
            },
          ),
        ),
      ],
    )
    );
  }
}
