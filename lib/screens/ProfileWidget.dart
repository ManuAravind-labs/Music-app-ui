import 'package:feel_frre_music_ui/models/ProfileItemModel.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  double space = 0;

  @override
  Widget build(BuildContext context) {
    space = MediaQuery.of(context).size.height/3;
    return Container(
        color: Colors.teal,
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(
                height: double.infinity,
                width: double.infinity,
                child: Container(
                  height: space,
                  color: Colors.white,
                  child: CustomPaint(
                    painter: CurvePainter(space),
                  ),
                )),
            Container(
              height: double.infinity,
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: (space - 150)),
              child: Column(children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image(
                      image: AssetImage("assets/images/taal.jpg"),
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100),
                ),
                SizedBox(height: 15),
                Text(
                  "Johnson J",
                  style: TextStyle(
                      color: Color(0xFF110554),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text("I love Listening to music",
                    style: TextStyle(color: Colors.grey, fontSize: 14)),
                ListView.builder(
                    itemCount: profileList.length,
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 60,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Icon(
                              profileList[index].icon,
                              size: 20,
                              color: profileList[index].color,
                            ),
                            SizedBox(width: 10),
                            Expanded(child: Text(profileList[index].title)),
                            SizedBox(width: 10),
                            Visibility(
                              visible: profileList[index].isBullet,
                              child: Container(
                                  height: 20,
                                  width: 50,
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  decoration: new BoxDecoration(
                                      color: Colors.pink.withOpacity(0.3),
                                      borderRadius: new BorderRadius.all(
                                          Radius.circular(10))),
                                  child: new Center(
                                    child: new Text(
                                        profileList[index].number.toString(),
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold)),
                                  )),
                            ),
                            SizedBox(width: 20),
                            Icon(Icons.more_horiz,
                                size: 30, color: Colors.black)
                          ],
                        ),
                      );
                    }),
              ]),
            )
          ],
        ));
  }
}

class CurvePainter extends CustomPainter {
  double mHeight = 0;

  CurvePainter(double mHeight) {
    this.mHeight = mHeight;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.pink;
    paint.style = PaintingStyle.fill; // Change this to fill
    var path = Path();
    path.moveTo(0, size.height * 0.15);
    path.quadraticBezierTo(
        size.width / 2, mHeight, size.width, size.height * 0.15);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
