import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  //final PageController pageController;

  const Test({Key? key,  }) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  bool pressAttention = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.purple,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CircleAvatar(
                          child: Icon(Icons.toggle_on_sharp),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Text(
                          "Important massage",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text('10/12/2021'),
                        flex: 1,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text(
                        'Most commonly used in the SliverAppBar.flexibleSpace field, a flexible space bar expands and contracts as the app scrolls so that the AppBar.',
                    maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'set up a goal',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              pressAttention = !pressAttention;
                            });
                          },
                          icon: Icon(
                            Icons.favorite,
                            color: (pressAttention == true)
                                ? Colors.white
                                : Colors.red,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amberAccent,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CircleAvatar(
                          child: Icon(Icons.toggle_on_sharp),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Text(
                          "Important massage",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text('10/12/2021'),
                        flex: 1,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text(
                      'Most commonly used in the SliverAppBar.flexibleSpace field, a flexible space bar expands and contracts as the app scrolls so that the AppBar.',
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'set up a goal',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              pressAttention = !pressAttention;
                            });
                          },
                          icon: Icon(
                            Icons.favorite,
                            color: (pressAttention == true)
                                ? Colors.white
                                : Colors.red,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightGreen,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CircleAvatar(
                          child: Icon(Icons.toggle_on_sharp),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Text(
                          "Important massage",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        flex: 2,
                      ),
                      Expanded(
                        child: Text('10/12/2021'),
                        flex: 1,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text(
                      'Most commonly used in the SliverAppBar.flexibleSpace field, a flexible space bar expands and contracts as the app scrolls so that the AppBar.',
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'set up a goal',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              pressAttention = !pressAttention;
                            });
                          },
                          icon: Icon(
                            Icons.favorite,
                            color: (pressAttention == true)
                                ? Colors.white
                                : Colors.red,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
