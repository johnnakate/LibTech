import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:libtech/screens/currentres.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: Image.asset(
      //   //       "assets/images/logo.png",
      //   //       fit: BoxFit.contain,
      //   //       height: 30,
      //   //     ),
      //   //      toolbarHeight: 60,
      //        backgroundColor: Colors.white,
      //        centerTitle: false,
      //        automaticallyImplyLeading: false,
      //       actions: [
      //         IconButton(onPressed: () => {}, icon: Icon(Icons.notifications)),
      //       ],
      //   ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        //height: 1100,
        //width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            dashboardText(),
            clickContainer(),
            SizedBox(height: 15),
            todayText(),
            DataTable(
              columns: [
                DataColumn(
                    label: Text('Name',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Type',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                DataColumn(
                    label: Text('Date',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Stephen')),
                  DataCell(Text('Actor')),
                ]),
                DataRow(cells: [
                  DataCell(Text('5')),
                  DataCell(Text('John')),
                  DataCell(Text('Student')),
                ]),
                DataRow(cells: [
                  DataCell(Text('10')),
                  DataCell(Text('Harry')),
                  DataCell(Text('Leader')),
                ]),
                DataRow(cells: [
                  DataCell(Text('15')),
                  DataCell(Text('Peter')),
                  DataCell(Text('Scientist')),
                ]),
              ],
            ),
            todayCard(context),
            upcomingText(),
            upcomingCard(),
            otherText(),
            calendarTile(),
            historyTile(),
            recommendationTile(),
            SizedBox(height: 15),
            //weeklyChart(),
          ],
        ),
      ),
    );
  }
}

Widget imageProfile() {
  return Center(
    child: Stack(children: <Widget>[
      CircleAvatar(
        radius: 80.0,
        backgroundImage: AssetImage('/assets/images/image.jpg/'),
        backgroundColor: Colors.white,
      ),
      Positioned(
        bottom: 20,
        right: 20,
        child: Icon(
          Icons.camera_alt,
          color: Colors.orange,
          size: 28.0,
        ),
      ),
    ]),
  );
}

Widget dashboardText() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(height: 24),
      // Text(
      //   "User Dashboard",
      //   style: TextStyle(
      //     color: Colors.black,
      //     fontWeight: FontWeight.bold,
      //     fontSize: 35,
      //   ),
      //),
      Image.asset(
        "assets/images/logo.png",
        fit: BoxFit.contain,
        height: 30,
      ),
      SizedBox(height: 16),
    ],
  );
}

Widget otherText() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(height: 24),
      Text(
        "Others",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      SizedBox(height: 16),
    ],
  );
}

Widget todayCard(BuildContext context) {
  return Center(
      child: Padding(
    padding: const EdgeInsets.all(2.0),
    child: Card(
      clipBehavior: Clip.antiAlias,
      elevation: 16,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
          onTap: () {},
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Ink.image(
                      height: 180,
                      image: NetworkImage(
                          'https://pbs.twimg.com/media/EDbOWkvU4AENBNq?format=jpg&name=medium'),
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 16,
                      right: 16,
                      left: 16,
                      child: Text('Rectangular Table Section',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16).copyWith(bottom: 0),
                  child: Text(
                    'The Rectangular Table Section is created as an extension inside the renovated college libary for the puprose of students can have more seats to use.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      child: Text(
                        'View Reservation Details',
                        style: TextStyle(color: Colors.orange, fontSize: 16),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => currentRes()));
                      },
                    ),
                    TextButton(
                      child: Text(
                        'Edit',
                        style: TextStyle(color: Colors.orange, fontSize: 16),
                      ),
                      onPressed: () {},
                    )
                  ],
                )
              ])),
    ),
  ));
}

Widget upcomingText() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(height: 24),
      Text(
        "Upcoming Reservations",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      SizedBox(height: 16),
    ],
  );
}

Widget upcomingCard() {
  return Center(
    child: Padding(
      padding: EdgeInsets.all(2.5),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.black87, Colors.grey[900]],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          height: 100,
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: ListTile(
            onTap: () {},
            leading: Container(
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                  color: Colors.orange[800], shape: BoxShape.circle),
              child: Icon(Icons.edit, color: Colors.white),
            ),
            title: Text(
              '18, Friday June 2021',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              'Discussion Room',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            trailing: IconButton(
                icon: Icon(Icons.more_vert, color: Colors.white),
                onPressed: () {}),
          ),
        ),
      ),
    ),
  );
}

Widget todayText() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(height: 24),
      Text(
        "My Reservations",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      SizedBox(height: 16),
    ],
  );
}

Widget clickContainer() {
  return Container(
    width: double.infinity,
    height: 200,
    padding: const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 35,
    ),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey[200], // changes position of shadow
        ),
      ],
      borderRadius: BorderRadius.all(Radius.circular(15)),
      color: Colors.orange[700],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                maxRadius: 35,
                backgroundImage: NetworkImage(
                    "https://images.radio.com/aiu-media/OLIVIARODRIGO-6697b1ba-fe09-400b-96df-5be693c19434.png"),
              ),
            ),
            SizedBox(width: 21),
            Expanded(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("Welcome back Olivia!",
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        child: Icon(
                          Icons.notifications_active,
                          color: Colors.white,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //beginning of top bottom bar
            Column(children: <Widget>[
              Text(
                "5",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 3),
              Text(
                "Reservations",
                style: TextStyle(
                  color: Colors.grey[300],
                ),
              )
            ]),
            Column(children: <Widget>[
              Text(
                "12",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 3),
              Text(
                "Total",
                style: TextStyle(
                  color: Colors.grey[300],
                ),
              )
            ]),
            Column(children: <Widget>[
              Text(
                "0",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 3),
              Text(
                "Cancelled",
                style: TextStyle(
                  color: Colors.grey[300],
                ),
              )
            ]),
            Column(children: <Widget>[
              Text(
                "0",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 3),
              Text(
                "Late",
                style: TextStyle(
                  color: Colors.grey[300],
                ),
              )
            ])
          ],
        )
      ],
    ),
  );
}

Widget calendarTile() {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(vertical: 9.0),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Colors.grey[200], blurRadius: 3.0, offset: Offset(0, 1))
      ],
      color: Colors.white,
    ),
    child: ListTile(
      onTap: () {},
      leading: Container(
        padding: EdgeInsets.all(9),
        decoration:
            BoxDecoration(color: Colors.orange[800], shape: BoxShape.circle),
        child: Icon(Icons.calendar_today, color: Colors.white),
      ),
      title: Text("Calendar"),
      subtitle: Text("Uses real time calendar"),
      trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: () {}),
    ),
  );
}

Widget historyTile() {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(vertical: 9.0),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Colors.grey[200], blurRadius: 3.0, offset: Offset(0, 1))
      ],
      color: Colors.white,
    ),
    child: ListTile(
      onTap: () {},
      leading: Container(
        padding: EdgeInsets.all(9),
        decoration:
            BoxDecoration(color: Colors.amber[700], shape: BoxShape.circle),
        child: Icon(Icons.history, color: Colors.white),
      ),
      title: Text("History"),
      subtitle: Text("View User History"),
      trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: () {}),
    ),
  );
}

Widget recommendationTile() {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(vertical: 9.0),
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Colors.grey[200], blurRadius: 3.0, offset: Offset(0, 1))
      ],
      color: Colors.white,
    ),
    child: ListTile(
      onTap: () {},
      leading: Container(
        padding: EdgeInsets.all(9),
        decoration:
            BoxDecoration(color: Colors.amber[600], shape: BoxShape.circle),
        child: Icon(Icons.star, color: Colors.white),
      ),
      title: Text("Recommended"),
      subtitle: Text("View recommended seats available"),
      trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: () {}),
    ),
  );
}

Widget weeklyChart() {
  return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: mychartItems("Activity for the last 7 days", "5 Hours")),
          SizedBox(height: 15)
        ],
      ));
}

//widget for chart
Widget mychartItems(
  String title,
  String hours,
) {
  var data = [
    0.0,
    1.0,
    0.0,
    0.5,
    2.5,
    1.0,
    0.0,
  ];
  return Material(
    color: Colors.white,
    elevation: 1.0,
    borderRadius: BorderRadius.circular(12.0),
    shadowColor: Color(0x802196F3),
    child: Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.orange,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    hours,
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: new Sparkline(
                    data: data,
                    lineColor: Colors.black,
                    pointsMode: PointsMode.all,
                    pointColor: Colors.orange,
                    pointSize: 8.0,
                  ),
                ),
                SizedBox(height: 15)
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
