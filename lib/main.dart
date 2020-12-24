
import 'package:flutter/material.dart';
import 'package:login_ui/SignUp.dart';

void main() {
  runApp(MaterialApp(
   debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 80, 0.0, 0.0),
                  child: Text("Hello",style: TextStyle(fontSize: 80.0,fontWeight: FontWeight.bold),),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 150.0, 0.0, 0.0),
                  child: Text("There",style: TextStyle(fontSize: 80.0,fontWeight: FontWeight.bold),),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(220.0, 150, 0.0, 0.0),
                  child: Text(".",style: TextStyle(fontSize: 80.0,fontWeight: FontWeight.bold,color: Colors.green),),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35.0,left: 20.0,right: 20.0),
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

                SizedBox(height: 5.0,),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top: 15.0,right: 10.0),
                   child: InkWell(
                     child: Text("Forget Password",style: TextStyle(
                         color: Colors.green,
                       fontWeight: FontWeight.bold,
                       decoration: TextDecoration.underline,
                     ),
                     ),
                   ),
                ),
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
                        child: Text("LOGIN",style: TextStyle(
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
                    child: Center(
                      child: Text("Log In With Facebook",style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: 15.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("New to App ?",style: TextStyle(fontWeight: FontWeight.bold),),
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),);
                },
                child: Text("Register",style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
