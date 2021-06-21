import 'package:feel_frre_music_ui/models/NewReleaseModel.dart';
import 'package:feel_frre_music_ui/widgets/TrendingNowWidget.dart';
import 'package:flutter/material.dart';

class BrowserScreen extends StatefulWidget {
  @override
  _BrowserScreenState createState() => _BrowserScreenState();
}

class _BrowserScreenState extends State<BrowserScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: 55,
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.search, color: Colors.grey),
                    Icon(Icons.voice_chat, color: Colors.grey)
                  ],
                ),
                decoration: new BoxDecoration(
                    color: Color(0xFFf2f2f2),
                    borderRadius: new BorderRadius.only(
                        bottomLeft: const Radius.circular(30.0),
                        bottomRight: const Radius.circular(30.0),
                        topLeft: const Radius.circular(30.0),
                        topRight: const Radius.circular(30.0))),
              ),
            ),
            _buildTrendingNow(),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Recent Searches",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF110554)),
                  ),
                  GestureDetector(
                      onTap: () => print('View --> '),
                      child: Text("See All",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                              fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            SizedBox(height: 15),
            ListView.builder(
                itemCount: newReleaseList.length,
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 100,
                    padding: EdgeInsets.only(left: 20, right: 20),
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image(
                            width: 80,
                            height: 80,
                            image: AssetImage(newReleaseList[index].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(newReleaseList[index].title,
                              style: TextStyle(
                                  color: Color(0xFF110554),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400)),
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(15.0),
                          ),
                          textColor: Colors.white,
                          color: Colors.pink,
                          padding: const EdgeInsets.all(8.0),
                          child: new Text(
                            "PLAY",
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ));
  }

  Widget _buildTrendingNow() {
    return TrendingNowWidget(
      images: newReleaseList,
      title: 'Trending',
      imageHeight: 180.0,
      imageWidth: 150.0,
    );
  }
}
