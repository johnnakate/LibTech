import 'package:flutter/material.dart';
import 'package:libtech/Screens/login.dart';


class Register extends StatelessWidget {
  final Function togScreen;
  const Register({Key key, this.togScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(25),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Theme.of(context).primaryColor,
                          ), //onPressed: () {  }, 
                          onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                          },
                          //onPressed: () => togScreen(),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    "Create Account", style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                   ),
                  ),
                  // Text("Create New Account",style: TextStyle(
                  //   fontSize: 18,
                  //   fontWeight: FontWeight.w500,
                  //   color: Colors.grey[400],
                  // ),
                  // ),
                  SizedBox(height: 20),
                  
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: TextFormField(
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                      decoration: InputDecoration(
                        //border: InputBorder.none,
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person_outlined, size: 30),
                        labelText: "NAME",
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w800,
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  


                  // Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  //   child: TextFormField(
                  //     style: TextStyle(
                  //       color: Theme.of(context).primaryColor,
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 22,
                  //     ),
                  //     decoration: InputDecoration(
                  //       border: InputBorder.none,
                  //       prefixIcon: Icon(Icons.email, size: 30),
                  //       labelText: "EMAIL",
                  //       labelStyle: TextStyle(
                  //         fontSize: 18,
                  //         color: Colors.grey[400],
                  //         fontWeight: FontWeight.w800,
                  //       )
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 10),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: TextFormField(
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                      decoration: InputDecoration(
                        //border: InputBorder.none,
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email, size: 30),
                        labelText: "EMAIL",
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w800,
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                                    // Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  //   child: Column(
                  //     children: <Widget> [
                  //       Text("Role"),
                  //       DropdownButton(
                  //         value: _selectedRole,
                  //         items: _dropdownMenuItems,
                  //         onChanged: onChangeDropdownItem,
                  //       ),
                  //       Text('Selected: ${selectedRole.name}'),
                  //     ],
                  //     ),
                  //   ),
                  // SizedBox(height: 10),
                  // Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  //   child: TextFormField(
                  //     style: TextStyle(
                  //       color: Theme.of(context).primaryColor,
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 22,
                  //     ),
                  //     decoration: InputDecoration(
                  //       border: InputBorder.none,
                  //       prefixIcon: Icon(Icons.settings_applications_outlined, size: 30),
                  //       labelText: "ROLE",
                  //       labelStyle: TextStyle(
                  //         fontSize: 18,
                  //         color: Colors.grey[400],
                  //         fontWeight: FontWeight.w800,
                  //       )
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 10),

                    Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: TextFormField(
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                      decoration: InputDecoration(
                        //border: InputBorder.none,
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.settings_applications_outlined, size: 30),
                        labelText: "ROLE",
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w800,
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  
                  // Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  //   child: TextFormField(
                  //     obscureText: true,
                  //     style: TextStyle(
                  //       color: Theme.of(context).primaryColor,
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 22,
                  //     ),
                  //     decoration: InputDecoration(
                  //       border: InputBorder.none,
                  //       prefixIcon: Icon(Icons.lock, size: 30),
                  //       labelText: "PASSWORD",
                  //       labelStyle: TextStyle(
                  //         fontSize: 18,
                  //         color: Colors.grey[400],
                  //         fontWeight: FontWeight.w800,
                  //       )
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 10),

                    Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: TextFormField(
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                      decoration: InputDecoration(
                        //border: InputBorder.none,
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock, size: 30),
                        labelText: "PASSWORD",
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w800,
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  // Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  //   child: TextFormField(
                  //     obscureText: true,
                  //     style: TextStyle(
                  //       color: Theme.of(context).primaryColor,
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 22,
                  //     ),
                  //     decoration: InputDecoration(
                  //       border: InputBorder.none,
                  //       prefixIcon: Icon(Icons.lock, size: 30),
                  //       labelText: "CONFIRM PASSWORD",
                  //       labelStyle: TextStyle(
                  //         fontSize: 18,
                  //         color: Colors.grey[400],
                  //         fontWeight: FontWeight.w800,
                  //       )
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 10),

                    Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: TextFormField(
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                      decoration: InputDecoration(
                        //border: InputBorder.none,
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock, size: 30),
                        labelText: "CONFIRM PASSWORD",
                        labelStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w800,
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  SizedBox(
                    height: 55,
                    width: double.infinity,
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ), 
                      child: Text("CREATE ACCOUNT")
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?", style: TextStyle(
                        fontSize: 18,
                      ),),
                      GestureDetector(
                        //onTap: () => togScreen(),
                        child: Text(
                          " Login",
                          style: TextStyle(
                           color: Theme.of(context).primaryColor,
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}