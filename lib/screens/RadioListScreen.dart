import 'package:feel_frre_music_ui/models/NewReleaseModel.dart';
import 'package:feel_frre_music_ui/models/RadioArtistModel.dart';
import 'package:feel_frre_music_ui/widgets/NewReleaseeWidget.dart';
import 'package:flutter/material.dart';

class RadioListScreen extends StatefulWidget {
  @override
  _RadioListScreenState createState() => _RadioListScreenState();
}

class _RadioListScreenState extends State<RadioListScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(
        "Radio Artist",
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color(0xFF110554)),
      ),
      SizedBox(height: 10),
      Expanded(child: gridView),
      Material(
        elevation: 1.0,
        child: Container(
          height: 40,
          color: Colors.white,
          child: Center(
            child: Text(
              "See All",
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
        ),
      ),
      SizedBox(height: 20),
      Container(
          height: 260,
          color: Colors.white,
          padding: EdgeInsets.all(10),
          child: _buildNewReleases())
    ]);
  }

  Widget _buildNewReleases() {
    return NewReleaseeWidget(
      images: newReleaseList,
      title: 'Live Radio',
      imageHeight: 150.0,
      imageWidth: 120.0,
    );
  }

  var gridView = GridView.builder(
      padding: EdgeInsets.only(left: 10, right: 10),
      itemCount: radioArtistList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.all(3),
          child: Column(
            children: <Widget>[
              Material(
                shape: CircleBorder(),
                elevation: 3.0,
                // child: Image(
                //   width: 90,
                //   height: 90,
                //   image: AssetImage(radioArtistList[index].image),
                //   fit: BoxFit.cover,
                // ),

                child: ClipRRect(
                    borderRadius: BorderRadius.circular(45.0),
                    child: Container(
                        child: Stack(
                      children: <Widget>[
                        Image(
                          width: 90,
                          height: 90,
                          image: AssetImage(radioArtistList[index].image),
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: 90,
                          height: 90,
                          color: radioArtistList[index].color.withOpacity(0.5),
                        )
                      ],
                    ))),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(5),
                  child: Text(radioArtistList[index].title),
                ),
              ),
            ],
          ),
        );
      });

// class _RadioListScreenState extends State<RadioListScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.white,
//         child: ListView(
//           children: <Widget>[
//             Padding(
//                 padding:
//                     EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
//                 child: Text(
//                   "Radio Artist",
//                   style: TextStyle(
//                       fontSize: 16.0,
//                       fontWeight: FontWeight.w600,
//                       color: Color(0xFF110554)),
//                 )),
//             SizedBox(height: 10),
//             gridView,
//             Material(
//               elevation: 1.0,
//               child: Container(
//                 height: 40,
//                 color: Colors.white,
//                 child: Center(
//                   child: Text(
//                     "See All",
//                     style: TextStyle(color: Colors.grey, fontSize: 12),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//                 height: 260,
//                 color: Colors.white,
//                 padding: EdgeInsets.all(10),
//                 child: _buildNewReleases())
//           ],
//         ));
//   }

}
