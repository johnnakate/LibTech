// import 'package:flutter/material.dart';
// import 'package:libtech/main.dart';
// import 'package:libtech/screens/onboarding.dart';
// import 'package:libtech/widget/button_widget.dart';

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: Text(MyApp.title),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'HomePage',
//                 style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 24),
//               ButtonWidget(
//                 text: 'Go Back',
//                 onClicked: () => goToOnBoarding(context),
//               ),
//             ],
//           ),
//         ),
//       );

//   void goToOnBoarding(context) => Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (_) => OnBoarding()),
//       );
// }

import 'package:flutter/material.dart';
import 'package:libtech/screens/booking/components/seat_selector.dart';
import 'package:libtech/screens/currentres.dart';
import 'package:libtech/screens/profile.dart';
import 'package:libtech/screens/addreservation.dart';
import 'package:libtech/screens/settings.dart';
import 'package:libtech/screens/tour.dart';
import 'package:libtech/screens/dashboard.dart';

//import 'dashboard.dart';
import 'MainPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
//Properties

  int currentTab = 0;
  final List<Widget> screens = [
    Dashboard(),
    Profile(),
    AddReservation(),
    MainPage(),
    Tour(),
    Settings(),
  ];

//ActivePageTab
  Widget currentScreen = Dashboard(); //initial screen in viewport
  final PageStorageBucket bucket = PageStorageBucket();

  //get decoration => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.orange[700],
        onPressed: () {
          Navigator.push(
            context,
            //MaterialPageRoute(builder: (context) => SeatSelector()),
            MaterialPageRoute(builder: (context) => MainPage()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width / 2 - 150.0,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Dashboard(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: currentTab == 0
                              ? Colors.orange[900]
                              : Colors.grey,
                        ),
                        Text(
                          //Dashboard
                          'Home',
                          style: TextStyle(
                            color: currentTab == 0
                                ? Colors.orange[900]
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width / 2 - 150.0,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Profile(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: currentTab == 1
                              ? Colors.orange[900]
                              : Colors.grey,
                        ),
                        Text(
                          //Profile
                          'Search',
                          style: TextStyle(
                            color: currentTab == 1
                                ? Colors.orange[900]
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width / 2 - 150.0,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Tour(); // if user taps on this dashboard tab will be active
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.threesixty,
                          color: currentTab == 2
                              ? Colors.orange[900]
                              : Colors.grey,
                        ),
                        Text(
                          //360
                          '360 Tour',
                          style: TextStyle(
                            color: currentTab == 2
                                ? Colors.orange[900]
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width / 2 - 150.0,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Settings(); // if user taps on this dashboard tab will be active
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: currentTab == 3
                              ? Colors.orange[900]
                              : Colors.grey,
                        ),
                        Text(
                          //Settings
                          'Me',
                          style: TextStyle(
                            color: currentTab == 3
                                ? Colors.orange[900]
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
