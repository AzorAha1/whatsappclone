import 'package:flutter/material.dart';
import 'package:slide_switcher/slide_switcher.dart';
import 'package:whatsappclone/screens/settingspage.dart';

class Callpage extends StatelessWidget {
  const Callpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 10, 0),
              child: Row(children: [
                SlideSwitcher(
                  slidersColors: [
                    Colors.grey.shade600,
                  ],
                  containerColor: Colors.black26,
                  children: [
                    Text(
                      'All',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Missed',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                  onSelect: (index) {},
                  containerHeight: 35,
                  containerWight: 300,
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  child: Icon(
                    Icons.add_ic_call_outlined,
                    color: Color.fromARGB(255, 50, 130, 195),
                  ),
                  onTap: () {
                    print('pressed');
                  },
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Calls',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
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
                    child: Icon(
                      Icons.link_outlined,
                      color: Colors.blue,
                    )),
                title: InkWell(
                  child: Text(
                    'Create Call Link',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                subtitle: Text(
                  'Share a link for your WhatsApp call',
                  style: TextStyle(fontWeight: FontWeight.w500),
                )),
            Divider(
              color: Colors.grey,
              thickness: 0.7,
              indent: 0,
              height: 0.0,
            ),
            SizedBox(
              height: 200,
            ),
            Center(
                child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 25),
                children: [
                  TextSpan(text: 'To place a WhatsApp voice\nor video call, tap'),
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(Icons.add_ic_call_outlined),
                    ),
                  ),
                  TextSpan(text: 'at the\ntop and select a contact'),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
