import 'package:flutter/material.dart';
import 'package:login_ui/main.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        colors: [
        Colors.red[300],
        Colors.red[700],
        Colors.red[400],
        ]
    ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                children: [

                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 100.0, 0.0, 0.0),
                    child: Text("Signup",style: TextStyle(fontSize: 80.0,fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(270.0, 100, 0.0, 0.0),
                    child: Text(".",style: TextStyle(fontSize: 80.0,fontWeight: FontWeight.bold,color: Colors.green),),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0,left: 20.0,right: 20.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: "EMAIL",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        )
                    ),

                  ),
                  SizedBox(height: 20.0,),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "PASSWORD",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20.0,),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "NICK NAME",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        )
                    ),

                  ),
                  SizedBox(height: 20.0,),


                  SizedBox(height: 40.0,),
                  Container(
                    height: 40.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(30.0),
                      elevation: 7.0,
                      color: Colors.green,
                      shadowColor: Colors.greenAccent,
                      child: GestureDetector(
                        onTap: (){},
                        child: Center(
                          child: Text("SIGN UP",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    height: 40.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30.0),

                      ),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),);
                        },
                        child: Center(
                          child: Text("GO TO LOGIN",style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
