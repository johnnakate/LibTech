import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
//import 'package:libtech/screens/home.dart';
import 'package:libtech/widget/button_widget.dart';
import 'package:libtech/screens/login.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Library Seat Reservation',
              body: 'Reserve seat conveniently.',
              image: buildImage('assets/images/onboarding_one.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Reserve Discussion Rooms Faster',
              body: 'Available right at your fingerprints.',
              image: buildImage('assets/images/onboarding_two.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Integrated with 360 Virtual Tour',
              body: 'For virtual reality experience.',
              image: buildImage('assets/images/onboarding_three.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'LibTech. Manage Seat, Manage Time',
              body: 'Start your journey.',
              footer: ButtonWidget(
                text: 'Continue',
                onClicked: () => goToHome(context),
                title: '',
              ),
              image: buildImage('assets/images/onboarding_two.jpg'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('Skip'),
          onSkip: () => goToHome(context),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Theme.of(context).primaryColor,
          skipFlex: 0,
          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => Login()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        //activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
