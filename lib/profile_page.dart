import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/test.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 50),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/me.jpg'),
                ),
                SizedBox(
                  width: 20,
                ),
                RichText(
                  text: TextSpan(
                      text: 'Welcome Back, Marvin ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                      children: [
                        TextSpan(
                            text: '\nYour Financial situation is shown',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black))
                      ]),
                ),
                SizedBox(
                  height: 10,
                  width: 25,
                ),
                PopupMenuButton(
                    itemBuilder: (context) => [
                          PopupMenuItem(
                            child: Text('first'),
                            value: 1,
                          ),
                          PopupMenuItem(
                            child: Text('Second'),
                            value: 2,
                          )
                        ])
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5,
                      color: Colors.black12,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Container(
                  width: 280,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5,
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('beginner level'), Text('XP 500/350')],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Today'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('weekly'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/test');
                },
                child: Text('monthly'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('yearly'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('future'),
              ),
            ],
          ),



         SizedBox(
           height: 750,
           child: Test(),

         )


        ],
      ),
    );
  }
}
