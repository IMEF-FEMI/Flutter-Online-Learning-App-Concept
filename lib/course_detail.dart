import 'package:flutter/material.dart';

class CourseDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            top: 10,
            child: Container(
              child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 80),
                  child: InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Back",
                          style: Theme.of(context).textTheme.headline5.copyWith(
                                color: Colors.white,
                              ),
                        )
                      ],
                    ),
                  )),
            ),
          ),
          Positioned(
            top: 140,
            left: 0,
            child: Container(
              padding: EdgeInsets.only(top: 5),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                  color: Color(0xfff1f1f1)),
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xffff6584),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                "UX - UI Design",
                                textAlign: TextAlign.start,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    .copyWith(
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    Icons.star,
                                    size: 23,
                                    color: Color(0xffff204f),
                                  ),
                                  SizedBox(width: 2),
                                  Text(
                                    "4.9",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17, vertical: 35),
                    child: Text(
                      "The Course Includes",
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            color: Colors.black,
                          ),
                    ),
                  ),
                  courseMaterialCard(context),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17, vertical: 35),
                    child: Text(
                      "Teacher",
                      style: Theme.of(context).textTheme.headline6.copyWith(
                          color: Colors.black, fontWeight: FontWeight.normal),
                    ),
                  ),
                  teacherCard(context),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17, vertical: 35),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff2e3636),
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          "Start",
                          style: TextStyle(color: Colors.white, fontSize: 19),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget courseMaterialCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Container(
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.1),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 2))
          ],
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            courseMaterial(context, Color(0xff6c63ff), "12 Video Tutorials",
                ["250 min", " of interesting lectures"], Icons.videocam),
            courseMaterial(context, Color(0xff53c1be), "7 Practical Tasks",
                ["3 teachers", " will check your work"], Icons.bookmark_border),
            courseMaterial(
                context,
                Color(0xffff6584),
                "10 Templates for Design",
                ["500 MB", " of sketch files"],
                Icons.folder_open)
          ],
        ),
      ),
    );
  }

  Widget teacherCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.1),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 2))
          ],
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
                'Gustavo Kenter ',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            subtitle: Text(
              'Designer',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(fontWeight: FontWeight.w300),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              size: 40,
              color: Color(0xff7d75ff),
            ),
            onTap: () {},
          ),
        ),
      ),
    );
  }

  Padding courseMaterial(BuildContext context, Color color, String title,
      List<String> subtitle, IconData icon) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Icon(
              icon,
              size: 35,
              color: Colors.white,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  title,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      subtitle[0],
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: color,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      subtitle[1],
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
