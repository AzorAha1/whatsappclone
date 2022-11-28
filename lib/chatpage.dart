import 'package:flutter/material.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({Key? key}) : super(key: key);

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    child: Text(
                      'Edit',
                      style: TextStyle(color: Colors.blue),
                    ),
                    onTap: () {
                      print('tapped');
                    },
                  ),
                  SizedBox(
                    width: 270,
                  ),
                  Icon(
                    Icons.camera_alt,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.edit_note_outlined,
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text('Chats'),
            ],
          ),
        ),
      ),
    );
  }
}
