import 'package:flutter/material.dart';
import 'package:libtech/screens/text_widgets/account_text.dart';
//import 'package:libtech/widget/card_widget/card_type.dart';
import 'package:libtech/widget/reservation/room_reservation_card.dart';
import 'package:libtech/widget/reservation/seat_reservation_card.dart';

class ReservationType extends StatefulWidget {
  //const ReservationType({ Key? key }) : super(key: key);

  @override
  _ReservationTypeState createState() => _ReservationTypeState();
}

class _ReservationTypeState extends State<ReservationType> {
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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            accountText("Choose Reservation Type"),
            //AccountForm(context)
            //weeklyChart(),
            // ListView.builder(itemBuilder: (BuildContext context, int index) {  },),
            SeatButton(),
            SizedBox(height: 5),
            RoomButton(),
          ],
        ),
      ),
    );
  }
}
