import 'package:flutter/material.dart';

class CardButtonWidget extends StatelessWidget {
  final String title;
  final String text;
  final String subtitle;
  final VoidCallback onClicked;

  const CardButtonWidget({
    Key key,
    @required this.title,
    @required this.text,
    @required this.subtitle,
    @required this.onClicked,
  }) : super(key: key);

  @override
  // ignore: deprecated_member_use
  Widget build(BuildContext context) => InkWell(
        // onTap: onClicked,
        //   color: Theme.of(context).primaryColor,
        // shape: StadiumBorder(),
        //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        //   child: Text(
        //     text,
        //     style: TextStyle(color: Colors.white, fontSize: 20),
        //   ),

        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: onClicked,
              child: Text(title),
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: Colors.orange[900],
                  elevation: 20,
                  minimumSize: Size(150, 50),
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 120)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              subtitle,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Open Sans',
                  fontSize: 20),
            ),
          ],
        ),
      );
}
