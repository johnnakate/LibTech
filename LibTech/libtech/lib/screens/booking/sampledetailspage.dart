import 'package:flutter/material.dart';
import 'package:libtech/screens/dashboard.dart';

class SelectedCategoryPage extends StatelessWidget {
  //SelectedCategoryPage({ Key? key }) : super(key: key);
  /*Category? selectedCategory;
  SelectedCategoryPage({this.selectedCategory});*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          //SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                'this.selectedCategory!.name!,',
                style: TextStyle(color: Colors.red, fontSize: 20),
              )),
            ],
          ),
          SizedBox(height: 15),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: List.generate(10, (index) {
                return GestureDetector(
                    onTap: () {
                      //TODO: navigate to the details page
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dashboard()));
                    },
                    child: Container(
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: Image.asset(
                                'assets/images/cit.png',
                                fit: BoxFit.cover,
                                width: 150,
                                height: 185,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                                'this.selectedCategory!.subCategories![index].name!',
                                style: TextStyle(color: Colors.red))
                          ],
                        )));
              }),
            ),
          ),
        ]),
      ),
    );
  }
}
