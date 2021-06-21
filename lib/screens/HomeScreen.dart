import 'package:feel_frre_music_ui/screens/BrowserWidget.dart';
import 'package:feel_frre_music_ui/screens/DashboardScreen.dart';
import 'package:feel_frre_music_ui/screens/MusicListScreen.dart';
import 'package:feel_frre_music_ui/screens/ProfileWidget.dart';
import 'package:feel_frre_music_ui/screens/RadioListScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {






  final Function(String title, int index) notifyParent;
  HomeScreen({Key key, @required this.notifyParent}) : super(key: key);






  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int selectedIndex = 0;

List _pages = [
    MusicListScreen(), 
    RadioListScreen(), 
    BrowserScreen(), 
    ProfileScreen(), 
  ]; 
List tabName = [
    "Music", 
    "Radio", 
    "Browser", 
    "Profile", 
  ]; 
  List<Color> _selectColorList = [Color(0xFF89216b), Color(0xFF110554), Color(0xFFffa904),Color(0xFF0be5af)];
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
        body: _pages[selectedIndex],
     
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
           onTap: onItemTapped,
           unselectedItemColor: Colors.grey,
           selectedItemColor: _selectColorList[selectedIndex],
           currentIndex: selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.music_video), title: Text('Music',)),
            BottomNavigationBarItem(
                icon: Icon(Icons.radio), title: Text('Radio')),
            BottomNavigationBarItem(
                icon: Icon(Icons.open_in_browser), title: Text('Browser')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('Profile')),
          ],
        ));
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      print(selectedIndex);
    
       widget.notifyParent( tabName[selectedIndex], index);
     
    });
  }
}
