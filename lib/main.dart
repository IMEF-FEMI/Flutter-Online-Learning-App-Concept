import 'package:flutter/material.dart';
import 'package:online_learning_app/for_you_cards.dart';

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

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _controller = ScrollController(
    initialScrollOffset: 305,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
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
          Positioned(
            top: 170,
            left: 0,
            child: Container(
              padding: EdgeInsets.only(top: 25),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                  color: Color(0xfff1f1f1)),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 17,
                    ),
                    child: Text(
                      "Top Courses",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: Colors.black, fontSize: 28),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    child: ListView(
                      controller: _controller,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        TopCourse(
                          color: Color(0xff5bccca),
                          courseTitle: "Web - HTML / CSS",
                        ),
                        TopCourse(
                          color: Color(0xffff6c89),
                          courseTitle: "UX - UI Design",
                        ),
                        TopCourse(
                          color: Color(0xff736aff),
                          courseTitle: "Mobile - Flutter",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 17,
                    ),
                    child: Text(
                      "For You",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(color: Colors.black, fontSize: 28),
                    ),
                  ),
                  SizedBox(height: 10,),

                  SizedBox(
                    height: 230,
                    child: ListView(
                      controller: _controller,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        ForYouCard(
                          color: Color(0xfffedde4),
                          name: "Tiana Mango",
                          course: "Animation In After Effects",
                          rating: "4.3",
                        ),
                        ForYouCard(
                          color: Color(0xffdddbfc),
                          name: "Duice Bator",
                          course: "Mobile App Design",
                          rating: "4.1",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 430,
                    child: ListView(
                      controller: _controller,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: <Widget>[
                        ForYouCard(
                          color: Color(0xffd2f1f0),
                          name: "Lincoln Bator",
                          course: "Animation In After Effects",
                          rating: "4.5",
                        ),
                        ForYouCard(
                          color: Color(0xfffedde4),
                          name: "Livia Lubin",
                          course: "Mobile App Design",
                          rating: "4.7",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
