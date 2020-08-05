import 'package:flutter/material.dart';

import 'top_course_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: Theme.of(context).copyWith(
        scaffoldBackgroundColor: Color(0xff6c63ff),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 28.0, top: 80),
              child: ListTile(
                isThreeLine: true,
                leading: CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.grey[500],
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/ol1.jpeg'),
                    radius: 25,
                  ),
                ),
                contentPadding: EdgeInsets.all(0),
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Hi, Davis ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                subtitle: Text(
                  'learning is easier and faster with us',
                  style: Theme.of(context).textTheme.subtitle2.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
      // body: Column(
      //   children: <Widget>[
      //     SizedBox(
      //       height: 80,
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 28.0),
      //       child: ListTile(
      //         isThreeLine: true,
      //         leading: CircleAvatar(
      //           radius: 27,
      //           backgroundColor: Colors.grey[500],
      //           child: CircleAvatar(
      //             backgroundImage: AssetImage('assets/ol1.jpeg'),
      //             radius: 25,
      //           ),
      //         ),
      //         contentPadding: EdgeInsets.all(0),
      //         title: Padding(
      //           padding: const EdgeInsets.symmetric(vertical: 8.0),
      //           child: Text(
      //             'Hi, Davis ',
      //             style: TextStyle(
      //               color: Colors.white,
      //               fontSize: 28,
      //               fontWeight: FontWeight.w500,
      //             ),
      //           ),
      //         ),
      //         subtitle: Text(
      //           'learning is easier and faster with us',
      //           style: Theme.of(context)
      //               .textTheme
      //               .subtitle2
      //               .copyWith(color: Colors.white, fontWeight: FontWeight.w300),
      //         ),
      //         onTap: () {},
      //       ),
      //     ),
      //     SizedBox(
      //       height: 20,
      //     ),
      //     Container(
      //       decoration: BoxDecoration(
      //         color: Color(0xffffffff),
      //         borderRadius: BorderRadius.only(
      //             topRight: Radius.circular(40), topLeft: Radius.circular(40)),
      //       ),
      //       margin: EdgeInsets.all(8),
      //       constraints: BoxConstraints.expand(height: 300, ),
      //       width: MediaQuery.of(context).size.width,
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: <Widget>[
      //           SizedBox(
      //             height: 20,
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal:15,),
      //             child: Text(
      //               "Top Courses",
      //               style: Theme.of(context)
      //                   .textTheme
      //                   .headline4
      //                   .copyWith(color: Colors.black, fontSize: 30),
      //             ),
      //           ),
      //           Expanded(
      //               child: GridView.count(
      //             scrollDirection: Axis.horizontal,
      //             crossAxisCount: 1,
      //             crossAxisSpacing: 10,
      //             mainAxisSpacing: 10,
      //             children: <Widget>[
      //               TopCourse(
      //                 color: Colors.pink,
      //               ),
      //               TopCourse(
      //                 color: Colors.blue,
      //               ),
      //             ],
      //           )),
      //         ],
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
