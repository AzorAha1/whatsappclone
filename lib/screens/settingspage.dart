import 'package:flutter/material.dart';
import 'package:customizable_space_bar/customizable_space_bar.dart';

class SettingPage extends StatefulWidget {
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black26,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Settings'),
            ),
          ),
          newcard(),
        ],
      ),
    );
  }
}

Widget newcard() => SliverToBoxAdapter(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          cardwid(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://static1.srcdn.com/wordpress/wp-content/uploads/2022/10/House-Of-The-Dragon-Episode-8-King-Viserys-Targaryen-Iron-Throne.jpg?q=50&fit=contain&w=943&h=&dpr=1.5'),
            ),
            title: Text('Username'),
            trailing: MaterialButton(
              child: Icon(Icons.qr_code,color: Colors.blue,),
              onPressed: () {
                print('qr code pressed');
              },
            ),
            subtitle: Text(
              'If not for the sake of the crown\nthen for the sake of this old man',
              style: TextStyle(),
            ),
            height: 80.0,
          ),
          Divider(
            height: 30,
          ),
          cardwid(
            leading: MaterialButton(
              minWidth: 10.0,
              height: 32.0,
              color: Colors.yellow,
              onPressed: () {
                print('starred message');
              },
              child: Icon(Icons.star),
            ),
            title: Text('Starred Messages'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.grey,
            thickness: 0.7,
            indent: 100,
            height: 0.0,
          ),
          cardwid(
            leading: MaterialButton(
              minWidth: 10.0,
              height: 32.0,
              color: Color.fromARGB(158, 127, 217, 130),
              onPressed: () {
                print('starred message');
              },
              child: Icon(Icons.laptop_mac),
            ),
            title: Text('Linked Devices'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            height: 30,
          ),
          //start
          cardwid(
            leading: MaterialButton(
              minWidth: 10.0,
              height: 32.0,
              color: Color.fromARGB(255, 3, 135, 244),
              onPressed: () {
                print('starred message');
              },
              child: Icon(Icons.key_rounded,),
            ),
            title: Text('Account'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.grey,
            thickness: 0.7,
            indent: 100,
            height: 0.0,
          ),
          
          cardwid(
            leading: MaterialButton(
              minWidth: 10.0,
              height: 32.0,
              color: Color.fromARGB(255, 47, 161, 214),
              onPressed: () {
                print('starred message');
              },
              child: Icon(Icons.lock),
            ),
            title: Text('Privacy'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.grey,
            thickness: 0.7,
            indent: 100,
            height: 0.0,
          ),
          cardwid(
            leading: MaterialButton(
              minWidth: 10.0,
              height: 32.0,
              color: Color.fromARGB(255, 151, 241, 47),
              onPressed: () {
                
              },
              child: Icon(Icons.whatsapp_outlined),
            ),
            title: Text('Chats'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.grey,
            thickness: 0.7,
            indent: 100,
            height: 0.0,
          ),
          cardwid(
            leading: MaterialButton(
              minWidth: 10.0,
              height: 32.0,
              color: Color.fromARGB(255, 245, 21, 5),
              onPressed: () {
                print('starred message');
              },
              child: Image.asset('assets/not.png',height: 50,width: 27,),
            ),
            title: Text('Notifications'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.grey,
            thickness: 0.7,
            indent: 100,
            height: 0.0,
          ),
          cardwid(
            leading: MaterialButton(
              minWidth: 10.0,
              height: 32.0,
              color: Colors.lightGreen,
              onPressed: () {
                print('starred message');
              },
              child:Icon(Icons.storage),
            ),
            
            title: Text('Linked Devices'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            height: 30,
          ),
           cardwid(
            leading: MaterialButton(
              minWidth: 10.0,
              height: 32.0,
              color: Colors.blue,
              onPressed: () {
                print('starred message');
              },
              child: Icon(Icons.info),
            ),
            title: Text('Help'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(
            color: Colors.grey,
            thickness: 0.7,
            indent: 100,
            height: 0.0,
          ),
           cardwid(
            leading: MaterialButton(
              minWidth: 10.0,
              height: 32.0,
              color: Colors.red,
              onPressed: () {
                print('starred message');
              },
              child: Icon(Icons.heart_broken),
            ),
            title: Text('Tell a Friend'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
         
          
        ],
      ),
    );

class cardwid extends StatelessWidget {
  Widget? leading;
  double? width;
  Widget? title;
  Widget? trailing;
  double? height;
  Widget? subtitle;
  cardwid(
      {this.leading,
      this.title,
      this.trailing,
      this.width,
      this.height,
      this.subtitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('pressed');
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(color: Color(0xff272626)),
        child: ListTile(
          leading: leading,
          title: title,
          trailing: trailing,
          subtitle: subtitle,
        ),
      ),
    );
  }
}
