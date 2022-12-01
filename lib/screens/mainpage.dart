import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:customizable_space_bar/customizable_space_bar.dart';
import 'package:whatsappclone/screens/callpage.dart';
import 'package:whatsappclone/screens/camerapage.dart';
import 'package:whatsappclone/screens/chatpage.dart';
import 'package:whatsappclone/screens/settingspage.dart';
import 'package:whatsappclone/screens/statuspage.dart';

class Mainpage extends StatefulWidget {
  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectedindex = 3;

  List<Widget> widgets = [
    Statuspage(),
    Callpage(),
    CameraPage(),
    Chatpage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Status',
            icon: newicons(
              iconData: Icons.donut_large_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Calls',
            icon: newicons(
              iconData: Icons.call_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Camera',
            icon: newicons(
              iconData: Icons.camera_alt_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Chats',
            activeIcon: newicons(iconData: Icons.chat_bubble_outline_outlined),
            icon: newicons(
              iconData: Icons.chat_bubble_outline_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: newicons(
              iconData: Icons.settings_outlined,
            ),
          ),
        ],
        currentIndex: _selectedindex,
        selectedItemColor: Colors.blue,
        onTap: (value) {
          setState(() {
            _selectedindex = value;
          });
        },
      ),
      body: Center(
        child: widgets[_selectedindex],
      ),
    );
  }
}

class newicons extends StatelessWidget {
  IconData? iconData;
  Function()? onpress;
  newicons({this.iconData, this.onpress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
          onTap: onpress,
          child: Icon(
            iconData,
            color: Colors.grey,
          )),
    );
  }
}

class newinkwell extends StatelessWidget {
  IconData? child;
  newinkwell({this.child, this.onpressed});
  Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
      child: InkWell(
        child: Icon(
          child,
          color: Colors.blue,
        ),
        onTap: onpressed,
      ),
    );
  }
}
