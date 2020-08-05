import 'package:flutter/material.dart';

class TopCourse extends StatelessWidget {
  final Color color;

  const TopCourse({Key key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 10),
      child: Container(
          child: Material(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: InkWell(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.star,
              size: 20,
              color: Colors.red,
            ),
          ],
        ),
      ),
            ),
          ),
        ),
    );
  }
}
