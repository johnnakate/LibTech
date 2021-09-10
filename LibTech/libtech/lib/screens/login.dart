import 'package:flutter/material.dart';
import 'package:libtech/Screens/register.dart';
import 'package:libtech/screens/home.dart';

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                //Icon(Icons.person_outlined, color: Colors.grey[300], size: 140),
                ImageIcon(
                  AssetImage('assets/images/logo.png'),
                  size : 180,
                  ),
                // SizedBox(height: 13),
                // Text(
                //   "Welcome Back", style: TextStyle(
                //   fontSize: 30,
                //   fontWeight: FontWeight.bold,
                //  ),
                // ),
                // Text("Sign in to continue",style: TextStyle(
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
                      prefixIcon: Icon(Icons.mail, size: 30),
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

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: TextFormField(
                    obscureText: true,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("Forgot Password?", style: TextStyle(
                        fontSize: 16,
                        //fontWeight: FontWeight.bold,
                        //color: Theme.of(context).primaryColor,
                        color: Colors.grey[400],
                      ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                        },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(3),
                    ), 
                    child: Text("LOGIN")


                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?", style: TextStyle(
                      fontSize: 16,
                    ),),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );
                        },
                      //onTap: () => togScreen(),
                      child: Text(
                        " Register",
                        style: TextStyle(
                         color: Theme.of(context).primaryColor,
                         fontWeight: FontWeight.bold,
                         fontSize: 16,
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
    );
  }
}