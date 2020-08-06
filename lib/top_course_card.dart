import 'package:flutter/material.dart';

import 'course_detail.dart';

class TopCourse extends StatelessWidget {
  final Color color;
  final String courseTitle;

  const TopCourse({Key key, this.color, this.courseTitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 20.0, left: 10, right: 10),
          child: Container(
            width: 320,
            child: Material(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(25)),
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CourseDetail())),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 35,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Color(0xffff204f),
                            ),
                            SizedBox(width: 2),
                            Text(
                              "4.9",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        courseTitle,
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        isThreeLine: true,
                        leading: CircleAvatar(
                          radius: 27,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/ol1.jpeg'),
                            radius: 25,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(0),
                        title: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            'Teacher ',
                            style:
                                Theme.of(context).textTheme.subtitle2.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                    ),
                          ),
                        ),
                        subtitle: Text(
                          'Gustavo Kenter',
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
