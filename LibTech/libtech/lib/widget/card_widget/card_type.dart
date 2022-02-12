import 'package:flutter/material.dart';

class TypeReservationWidget extends StatelessWidget {
  final String title;
  final String text;
  final String subtitle;
  final VoidCallback onClicked;

  const TypeReservationWidget({
    Key key,
    @required this.title,
    @required this.text,
    @required this.subtitle,
    @required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
          child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 16,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: InkWell(
              onTap: onClicked,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Ink.image(
                          height: 150,
                          image: AssetImage('assets/images/1.png'),
                          fit: BoxFit.fill,
                        ),
                        Positioned(
                          bottom: 16,
                          right: 16,
                          left: 16,
                          child: Text(title,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              )),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(10).copyWith(bottom: 0),
                      child: Text(
                        subtitle,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          child: Text(
                            text,
                            style:
                                TextStyle(color: Colors.orange, fontSize: 16),
                          ),
                          onPressed: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => currentRes()));
                          },
                        ),
                      ],
                    )
                  ])),
        ),
      ));
}
