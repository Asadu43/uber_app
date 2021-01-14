import 'dart:async';
import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:login_ui/AllWidgets/Divider.dart';
import 'package:login_ui/LoginPage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Completer<GoogleMapController> _googleMapcontroller = Completer();
  GoogleMapController newGoogleMapController;

  Position currentposition;
  var geolocator = Geolocator();

  double bottomPadding = 0;

  void locatPosition() async{

    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    currentposition = position;

    LatLng latLngPosition = LatLng(position.latitude, position.longitude);

    CameraPosition cameraPosition = new CameraPosition(target: latLngPosition,zoom: 14.0);
    newGoogleMapController.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),

      drawer: Container(
        color: Colors.white,
        width: 255.0,
        child: Drawer(
          child: ListView(
            children: [

              Container(
                height: 165.0,
                child: DrawerHeader(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    children: [
                      Image.asset("images/muree.jpg",height: 65.0, width: 65.0,),
                      SizedBox(width: 16.0,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Profile Name",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                          SizedBox(height: 6.0,),
                          Text("Visit Profile"),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              DividerWidget(),
              SizedBox(height: 12.0,),

              ListTile(
                leading: Icon(Icons.history),
                title: Text("History",style: TextStyle(fontSize: 15.0),),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Visit Profile",style: TextStyle(fontSize: 15.0),),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("About",style: TextStyle(fontSize: 15.0),),
              ),

            ],
          ),
        ),
      ),

      body: Stack(
        children: [
          GoogleMap(
            padding: EdgeInsets.only(bottom: bottomPadding),
            mapType: MapType.normal,
            myLocationButtonEnabled: true,
            initialCameraPosition: _kGooglePlex,

            zoomControlsEnabled: true,
            zoomGesturesEnabled: true,
            myLocationEnabled: true,

            onMapCreated: (GoogleMapController controller){
              _googleMapcontroller.complete(controller);
              newGoogleMapController = controller;

              setState(() {
                bottomPadding = 265.0;
              });

              locatPosition();


            },
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: Container(
              height: 280.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(18.0),topRight: Radius.circular(18.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6.0,
                    spreadRadius: 2.0,
                    offset: Offset(0.7,0.7),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6.0,),
                    Text("Hi there!",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold),),
                    Text("Where to go!",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20.0,),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 6.0,
                            spreadRadius: 2.0,
                            offset: Offset(0.7,0.7),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.blueAccent,),
                            SizedBox(width: 10.0,),
                            Text("Search Drop off")
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 24.0,),
                    Row(
                      children: [
                        Icon(Icons.home,color: Colors.grey,),
                        SizedBox(width: 12.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Add home"),
                            SizedBox(height: 4.0,),
                            Text("Your are living home address!",style: TextStyle(fontSize: 12.0,color: Colors.black),),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    DividerWidget(),
                    SizedBox(height: 16.0,),
                    Row(
                      children: [
                        Icon(Icons.work,color: Colors.grey,),
                        SizedBox(width: 12.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Add Office"),
                            SizedBox(height: 4.0,),
                            Text("Your office address!",style: TextStyle(fontSize: 12.0,color: Colors.black),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
