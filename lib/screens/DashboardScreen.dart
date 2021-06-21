import 'package:feel_frre_music_ui/models/DrawerItem.dart';
import 'package:feel_frre_music_ui/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Home", Icons.home),
    new DrawerItem("Radio", Icons.music_video),
    new DrawerItem("All Tracks", Icons.track_changes),
    new DrawerItem("Music Languages", Icons.language),
    new DrawerItem("My Favorite", Icons.favorite),
    new DrawerItem("My Playlist", Icons.playlist_play),
    new DrawerItem("About", Icons.question_answer),
    new DrawerItem("Help/FAQ", Icons.help),
    new DrawerItem("Settings", Icons.settings)
  ];

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedDrawerIndex = 0;
  String titleData = "Music";
  Color headerTextColor = Color(0xFF110554);
  Color appbarColor = Colors.white;
  int index;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return HomeScreen(notifyParent: refresh);
      case 1:
        return Text("About us");
      case 2:
        return Text("Settings");
      default:
        return Text("Error");
    }
  }

  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(ListTile(
        leading: Icon(
          d.icon,
          color: Color(0xFF110554),
          size: 18,
        ),
        title: Text(d.title,
            style: TextStyle(color: Color(0xFF110554), fontSize: 14)),
        selected: i == _selectedDrawerIndex,
        onTap: () => _onSelectItem(i),
      ));
    }

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: headerTextColor),
        backgroundColor: appbarColor,
        elevation: 0.0,
        title: Text(
          // widget.drawerItems[_selectedDrawerIndex].title,
          titleData,
          style: TextStyle(color: headerTextColor, fontSize: 18),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              accountName:
                  new Text("John Doe", style: TextStyle(color: Colors.black)),
              accountEmail: Text("abccd@gmail.com",
                  style: TextStyle(color: Colors.black)),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.green,
                backgroundImage: NetworkImage("gravatarUrl"),
              ),
            ),
            Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }

  void refresh(String title, int index) {
    setState(() {
      this.titleData = title;
      print("KKKKKK  " + index.toString());
      if (index == 3) {
        appbarColor = Colors.pink;
        headerTextColor = Colors.white;
      } else {
        appbarColor = Colors.white;
        headerTextColor = Color(0xFF110554);
      }
    });
  }
}
