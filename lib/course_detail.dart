import 'package:flutter/material.dart';

class CourseDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            top: 20,
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
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: ListTile(
                      isThreeLine: true,
                      leading: Container(
                        width: 150,
                        height: 250,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      contentPadding: EdgeInsets.all(0),
                      title: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18.0),
                        child: Text(
                          'Hi, Davis ',
                          style: TextStyle(
                            // color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      subtitle: Text(
                        'learning is easier and faster with us',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            .copyWith(fontWeight: FontWeight.w300),
                      ),
                      onTap: () {},
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
