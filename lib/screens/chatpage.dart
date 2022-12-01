import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:customizable_space_bar/customizable_space_bar.dart';

class Chatpage extends StatefulWidget {
  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              newinkwell(
                child: Icons.camera_alt_outlined,
                onpressed: () {},
              ),
              newinkwell(
                child: Icons.edit_note_outlined,
                onpressed: () {},
              ),
            ],
            pinned: true,
            leading: Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 20, 10),
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Edit',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
            ),

            backgroundColor: Theme.of(context).scaffoldBackgroundColor,

            /// This is the part you use this package
            flexibleSpace: CustomizableSpaceBar(
              builder: (context, scrollingRate) {
                /// Example content
                return Padding(
                  padding: EdgeInsets.only(
                      bottom: 13, left: 12 + 40 * scrollingRate),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Chats",
                      style: TextStyle(
                          fontSize: 42 - 18 * scrollingRate,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              },
            ),

            /// End of the part

            expandedHeight: 150,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.account_circle, size: 40),
                  ),
                  title: Text('Title'),
                  subtitle: Text('Open text'),
                );
              },
            ),
          ),
        ],
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
//newicons(
            //   onpress: () {
            //     Navigator.pushNamed(context, '/status');
            //   },
            //   iconData: Icons.donut_large_outlined,
            // ),
            // newicons(
            //   iconData: Icons.call_outlined,
            // ),
            // newicons(
            //   iconData: Icons.camera_alt,
            // ),
            // newicons(
            //   iconData: Icons.chat_bubble_outline_outlined,
            // ),
            // newicons(
            //   iconData: Icons.settings_outlined,
            // ),