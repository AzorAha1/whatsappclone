import 'package:flutter/material.dart';
import 'package:slide_switcher/slide_switcher.dart';

class Callpage extends StatelessWidget {
  const Callpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ],
        ),
      ),
    );
  }
}
