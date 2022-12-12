import 'dart:io';

import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_camera/flutter_camera.dart';
import 'package:whatsappclone/screens/chatpage.dart';
import 'package:whatsappclone/screens/settingspage.dart';

class Statuspage extends StatefulWidget {
  const Statuspage({super.key});

  @override
  State<Statuspage> createState() => _StatuspageState();
}

class _StatuspageState extends State<Statuspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                child: Text(
                  'Privacy',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Status',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 30),
              child: SizedBox(
                height: 45,
                width: 800,
                child: TextFormField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        color: Color.fromARGB(66, 228, 222, 222),
                      ),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(66, 228, 222, 222)),
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                print('edit');
              },
              child: Card(
                child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/vizzyt.jpg'),
                    ),
                    title: Text('My Status'),
                    subtitle: Text('Add to my status'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {
                            print('camera');
                            setState(() {
                              Navigator.pushReplacementNamed(context, '/camerapage');
                            });
                          },
                          child: Icon(Icons.camera_alt),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            print('edit icon');
                          },
                          child: Icon(Icons.edit),
                        ),
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'RECENT UPDATES',
                style: TextStyle(color: Color.fromARGB(194, 186, 181, 181)),
              ),
            ),
            cardwid(
              height: 80,
              leading: MaterialButton(
                minWidth: 20.0,
                height: 40.0,
                onPressed: () {
                  print('starred message');
                },
                child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://static.wikia.nocookie.net/gameofthrones/images/2/22/Daemon-Targaryen-profile.png/revision/latest?cb=20220330173640')),
              ),
              title: Text('Daemon Targaryan'),
              subtitle: Text('just now'),
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.7,
              indent: 100,
              height: 0.0,
            ),
            cardwid(
                height: 80,
                leading: MaterialButton(
                  minWidth: 20.0,
                  height: 40.0,
                  onPressed: () {
                    print('starred message');
                  },
                  child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.pinkvilla.com/files/styles/amp_metadata_content_image/public/queen_aemma_arryn.jpg')),
                ),
                title: Text('Aemma Arryn'),
                subtitle: Text(
                  '6m ago',
                  style: TextStyle(fontWeight: FontWeight.w600),
                )),
            Divider(
              color: Colors.grey,
              thickness: 0.7,
              indent: 100,
              height: 0.0,
            ),
            cardwid(
                height: 80,
                leading: MaterialButton(
                  minWidth: 20.0,
                  height: 40.0,
                  onPressed: () {
                    print('starred message');
                  },
                  child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://assets.vogue.in/photos/6343c7065cd72513ce2ad880/master/pass/Alicent%20Hightower.jpeg')),
                ),
                title: Text('Alicent Hightower'),
                subtitle: Text(
                  '10m ago',
                  style: TextStyle(fontWeight: FontWeight.w600),
                )),
          ],
        ),
      ),
    );
  }
}
