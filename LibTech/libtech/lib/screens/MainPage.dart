/*import 'package:flutter/material.dart';
import 'package:libtech/Animation/FadeAnimation.dart';
import 'package:libtech/screens/CalendarPage.dart';

import 'booking/sampledetailspage.dart';
import 'dashboard.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainPage(),
      routes: {
        '/CalendarPage': (context) => CalendarPage(),
      },
    );
  }
}

// ignore: camel_case_types
class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

// ignore: camel_case_types
class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://scontent.fdvo1-1.fna.fbcdn.net/v/t1.6435-9/70556166_2432333133712957_5350106564374036480_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=8bfeb9&_nc_eui2=AeFODtcFGI0frBf2BPwMChre98vscC2dn8X3y-xwLZ2fxUPh_aP8s8lBtSkPlNt-FOpBt2_4ZHBYnQvK8uY6fn9C&_nc_ohc=-G9XeMgnAzYAX87fRwX&_nc_ht=scontent.fdvo1-1.fna&oh=abfdaed782e67c0d19380abe6a7de460&oe=60C8C281'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.2),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FadeAnimation(
                        1,
                        Text(
                          "Libtech: Reserve Seats, Manage Time",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    FadeAnimation(
                        1.3,
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 3),
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                                hintText:
                                    "Search for sections, areas, or even seats..."),
                          ),
                        )),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text(
                        "Frequently Used Areas",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                            fontSize: 20),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.4,
                      Container(
                        height: 500,
                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          children: <Widget>[
                            makeItem(
                              image:
                                  'https://scontent.fdvo1-1.fna.fbcdn.net/v/t1.6435-9/76974938_2564739407108391_8034461364892205056_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=8bfeb9&_nc_eui2=AeHPVVrefaJ8VMYhKha93yXJdHFHJn7NnaR0cUcmfs2dpFd-9KgaVwKsQQq9YDVBGxZtsAiVPz_yeF277euuc2Wy&_nc_ohc=h6KhdAGNKfoAX-rTtIK&_nc_ht=scontent.fdvo1-1.fna&oh=a1ef1246527e261d83b19d6207262183&oe=60C90BBB',
                              title: 'Reading Hub',
                            ),
                            makeItem(
                                image:
                                    'https://scontent.fdvo1-1.fna.fbcdn.net/v/t1.6435-9/71035918_2536197646455949_6549271556655153152_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=730e14&_nc_eui2=AeFUUprdE4zpszYGJrTpBamOs95bFApGxhqz3lsUCkbGGr9tdAz_we-pofKdsZTLKjNMU1uTswwFRvReOuOV8lJx&_nc_ohc=_0-9x_Qp0fUAX-eWl4V&_nc_ht=scontent.fdvo1-1.fna&oh=b286021a4d64c23747ea4a9adac0a933&oe=60C9755F',
                                title: 'Discussion Room'),
                            makeItem(
                                image:
                                    'https://scontent.fdvo1-1.fna.fbcdn.net/v/t1.6435-9/70907130_1145766522273378_1010972083854770176_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=8bfeb9&_nc_eui2=AeFSHGafzBkE1Q2LCyGflo7d7C3gi0H-FwvsLeCLQf4XCxCroTYSHWNFFx8V_ILGKOBQibroC18VZB6nk71-K0jo&_nc_ohc=6FPxuWSG1ycAX-a8xKw&_nc_ht=scontent.fdvo1-1.fna&oh=93850adf4200054f27d9e6d8a375d848&oe=60C9414A',
                                title: 'Elliptical Reading Area'),
                            makeItem(
                                image:
                                    'https://scontent.fdvo1-1.fna.fbcdn.net/v/t1.6435-9/70779007_2536197639789283_8098701190738477056_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=730e14&_nc_eui2=AeEU_19g09xzJ1cs3aDluYqROOO2hd2HyGY447aF3YfIZuKEqaSHoWhOROqPIICjFAm3IBoRRMlLm4GI8Tqe251k&_nc_ohc=4tUGXNGxPcUAX-Lv9Bs&_nc_ht=scontent.fdvo1-1.fna&oh=ded67945b508b02c6e98ba31e1aca282&oe=60C8A2AD',
                                title: 'Activity Loft'),
                            makeItem(
                                image:
                                    'https://scontent.fdvo1-1.fna.fbcdn.net/v/t1.6435-9/70504777_2536197506455963_938483227855683584_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=730e14&_nc_eui2=AeG36W1zuRRX31QZdAnzdEk-8x6ZD_kzrgjzHpkP-TOuCLXSB8js_0fk69LGd2N_IOiPwzAvf_FsxAuq1omSj2xG&_nc_ohc=BTSz6ttW7zUAX_u5GYO&_nc_ht=scontent.fdvo1-1.fna&oh=6a6877692990eef91d7bcb9fbed5ca26&oe=60C88458',
                                title: 'Wildcats Exhibit Area')
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1,
                      Text(
                        "Best Hotels",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                            fontSize: 20),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//here is the code for the different sections inside the library
Widget makeItem({image, title, context, link}) {
  return AspectRatio(
    aspectRatio: 1 / 1,
    child: InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: TextButton(
              child: Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  //MaterialPageRoute(builder: (context) => AddReservation()),
                  MaterialPageRoute(
                      builder: (context) => SelectedCategoryPage()),
                );
              },
            ),
          ),
        ),
      ),
    ),
  );
}
 */
import 'package:flutter/material.dart';
import 'package:libtech/helpers/appcolors.dart';
import 'package:libtech/helpers/iconhelper.dart';
import 'package:libtech/widget/cancel_button_widget.dart';
import 'package:libtech/widget/datepickerwidget.dart';
import 'package:libtech/widget/iconfont.dart';
//import 'package:libtech/widget/selectrange.dart';
import 'package:libtech/widget/submit_button_widget.dart';
import 'package:libtech/widget/timepickerwidget.dart';

import 'booking/components/applogo.dart';

/*import 'package:libtech/models/category.dart';
import 'package:libtech/models/categorypart.dart';
import 'package:libtech/models/subcategory.dart';
import 'package:libtech/widgets/mainappbar.dart';
*/
class MainPage extends StatefulWidget {
  /*SubCategory? subCategory;
  DetailsPage({this.subCategory});*/

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      //alignment: Alignment.center,
      child: Column(
        children: [
          Stack(children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/cafe01.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
                child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.transparent,
                  ])),
            )),
            AppBar(
              elevation: 0,
              centerTitle: true,
              //title: Image.asset('assets/images/mainlogo.png', fit: BoxFit.cover),
              /*title: Text('LIBTECH',
              style: TextStyle(
                  fontFamily: 'Open Sans', fontWeight: FontWeight.bold)),*/
              title: appLogo,
              backgroundColor: Colors.transparent,
              iconTheme: IconThemeData(color: AppColors.MAIN_COLOR),
              actions: [
                Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.all(10),
                    child: ClipOval(
                      child: Image.asset('assets/images/user_olivia.jpg'),
                    ))
              ],
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Wildcats cafe',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text('30 mins  - 4 hrs',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white))),
                        ],
                      ),
                    ],
                  ),
                )),
            Positioned(
                right: 20,
                top: 100,
                child: Container(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 8, right: 15, left: 15),
                  decoration: BoxDecoration(
                      color: AppColors.MAIN_COLOR,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 20,
                          offset: Offset.zero,
                        )
                      ]),
                  child: Row(
                    children: [
                      Text('3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          )),
                      IconFont(
                          color: Colors.white,
                          iconName: IconFontHelper.LOGO,
                          size: 15),
                    ],
                  ),
                )),
          ]),
          SizedBox(height: 20),
          Stack(
            children: [
              Expanded(
                  child: Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5, right: 20, left: 20),
                      child: Text('Choose which area you want to reserve'),
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                                onTap: () {
                                  //TODO: change the selected part of each part.
                                  setState(() {
                                    /*widget.subCategory!.parts!
                                                        .forEach((CategoryPart
                                                            part) {
                                                      part.isSelected = widget
                                                              .subCategory!
                                                              .parts![index] ==
                                                          part;
                                                    });*/
                                  });
                                },
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          margin: EdgeInsets.all(15),
                                          width: 120,
                                          height: 150,
                                          decoration: BoxDecoration(
                                              /* border: widget
                                                                          .subCategory!
                                                                          .parts![
                                                                              index]
                                                                          .isSelected
                                                                      ? Border.all(
                                                                          color: widget
                                                                              .subCategory!
                                                                              .color,
                                                                          width:
                                                                              7)
                                                                      : null,*/
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/cafe01.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.1),
                                                  offset: Offset.zero,
                                                  blurRadius: 10,
                                                )
                                              ])),
                                      Container(
                                          margin: EdgeInsets.only(left: 25),
                                          child: Text(
                                            'name',
                                            textAlign: TextAlign.left,
                                          ))
                                    ]));
                          }),
                    ),
                    /*Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text.rich(TextSpan(children: [
                      TextSpan(text: 'Time:'),
                      TextSpan(
                          text: 'Hours',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '(max.4hrs)', style: TextStyle(fontSize: 12)),
                    ])),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              offset: Offset.zero,
                              color: Colors.black.withOpacity(0.1))
                        ],
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_circle_outline,
                            size: 50,
                            color: AppColors.MAIN_COLOR,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Center(
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(
                                      text: '3',
                                      style: TextStyle(fontSize: 40)),
                                  TextSpan(
                                      text: 'Hrs.',
                                      style: TextStyle(fontSize: 20)),
                                ])),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.remove_circle_outline,
                            size: 50,
                            color: Colors.grey,
                          )
                        ]),
                  )
                ]),*/
                    /*TimePickerWidget1(
                      onRangeCompleted: (range) =>
                          setState(() => _timeRange = range),
                    ),*/
                    SizedBox(
                      height: 20,
                    ),
                    TimePickerWidget(),
                    DatePickerDemo(),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SubmitButton(),
                            SizedBox(
                              width: 30,
                            ),
                            CancelButton(),
                          ],
                        ),
                      ),
                    ),
                  ])))
            ],
          )
        ],
      ),
    ));
  }
}
