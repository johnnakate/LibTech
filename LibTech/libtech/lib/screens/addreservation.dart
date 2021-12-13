// import 'package:flutter/material.dart';
// import 'package:libtech/constants/constants.dart';
// //import 'package:libtech/screens/booking/components/custom_app_bar.dart';
// import 'package:libtech/screens/booking/components/date_selector.dart';
// // import 'package:libtech/screens/booking/components/location_text.dart';
// // import 'package:libtech/screens/booking/components/pay_button.dart';
//  import 'package:libtech/screens/booking/components/seat_selector.dart';
//  import 'package:libtech/screens/booking/components/time_selector.dart';

// class AddReservation extends StatefulWidget {

//   final String movieName;

//   AddReservation({this.movieName});

//   @override
//   _AddReservationState createState() => _AddReservationState();
// }

// class _AddReservationState extends State<AddReservation> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: black,
//       body: Padding(
//         padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
//         child: Column(
//           children: [
//             //app bar
//             //CustomAppBar(widget.movieName),

//             //date selector
//             DateSelector(),

//             //Time selector
//             TimeSelector(),

//             //Location and theatre
//            // LocationText(),

//            // Seat selector
//             SeatSelector(),

//             //Pay button and seat categories
//            // PayButton(),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class AddReservation extends StatefulWidget {
  @override
  _AddReservationState createState() => _AddReservationState();
}

class _AddReservationState extends State<AddReservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo.png",
          fit: BoxFit.contain,
          height: 30,
        ),
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Row(
          children: <Widget>[
            Expanded(
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  "Discussion Rooms",
                ),
              ),
            ),
            Expanded(
              // ignore: deprecated_member_use
              child: RaisedButton(
                child: Text("Seats"),
                //color: Colors.red,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
