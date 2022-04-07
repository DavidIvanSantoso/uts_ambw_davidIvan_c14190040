import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Container continueCard(
        String judul, String subjudul, String waktu, IconData icon) {
      return Container(
        margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
        color: Colors.lightGreen,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Column(
                children: [Icon(icon)],
              ),
            ),
            Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      judul,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(subjudul),
                  ],
                )),
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Icon(Icons.alarm),
                  ),
                  Container(
                    child: Text(waktu),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget continueSection = Container(
      margin: EdgeInsets.fromLTRB(15, 20, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Text(
              "Continue Learning : ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Row(children: [
              continueCard(
                  "Science", "Chapter 4", "27 Mins", Icons.calendar_today),
              continueCard("Design", "Chapter 5", "30 Mins", Icons.star),
              continueCard("Biology", "Chapter 1", "25 Mins", Icons.biotech),
              continueCard("Cooking", "Chapter 3", "18 Mins", Icons.coffee),
            ]),
          )
        ],
      ),
    );

    Container buttonFunc(String nama, IconData icon) {
      return Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Icon(icon),
            ),
            Padding(
              padding: EdgeInsets.all(0),
              child: Text(nama),
            )
          ],
        ),
      );
    }

    Widget TitleSection = Container(
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 15),
            margin: EdgeInsets.only(left: 10),
            child: Text(
              "Popular Courses: ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buttonFunc("Science", Icons.calendar_month),
                  buttonFunc("Cooking", Icons.coffee),
                  buttonFunc("Math", Icons.architecture),
                  buttonFunc("Biology", Icons.biotech),
                  buttonFunc("Design", Icons.star)
                ]),
          )
        ],
      ),
    );

    Container isiLastSeen(
        String judul, String subjudul, IconData icon, IconData icon2) {
      return Container(
        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
        margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.pinkAccent),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              child: Icon(icon),
            ),
            Container(
              width: 375,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      judul,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(subjudul),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [Icon(icon2)],
              ),
            )
          ],
        ),
      );
    }

    Widget LastSeenCourse = Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
                child: Text("Last Seen Course",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              )
            ],
          ),
          isiLastSeen("Basics of Designing", "1 hour, 25 mins", Icons.folder,
              Icons.play_circle_fill_outlined),
          isiLastSeen("Human Respiratory System", "4 hour, 10 mins", Icons.book,
              Icons.play_circle_fill_outlined),
          isiLastSeen("Integration & Differentiation", "2 hour, 37 mins",
              Icons.album, Icons.play_circle_fill_outlined)
        ],
      ),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Test 1 - C14190040"),
        ),
        body: Column(
          children: [
            TitleSection,
            continueSection,
            LastSeenCourse,
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "Explore", icon: Icon(Icons.book_online)),
            BottomNavigationBarItem(label: "Chat", icon: Icon(Icons.chat)),
          ],
        ),
      ),
    );
  }
}
