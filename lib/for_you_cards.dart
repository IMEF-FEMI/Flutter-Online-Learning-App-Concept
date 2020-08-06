import 'package:flutter/material.dart';

class ForYouCard extends StatelessWidget {
  final Color color;
  final String name;
  final String course;
  final String rating;

  const ForYouCard({Key key, this.color, this.name, this.course, this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 10, bottom: 0.0, left: 10, right: 10),
      child: Stack(
        children: <Widget>[
          Container(
            width: 180,
            height: 200,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 18.0, horizontal: 20.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/ol2.jpeg'),
                          radius: 18,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        name,
                        style: Theme.of(context).textTheme.subtitle2.copyWith(
                              color: Colors.black,
                              // fontWeight: FontWeight.w200,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 65,
            left: 0,
            child: Container(
              width: 180,
              height: 150,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 23.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              size: 20,
                              color: Color(0xffff204f),
                            ),
                            SizedBox(width: 2),
                            Text(
                              rating,
                              style: TextStyle(fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(course,
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
