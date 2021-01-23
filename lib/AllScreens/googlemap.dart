import 'dart:async';
import 'package:Elderly/AllScreens/searchScreen.dart';
import 'package:Elderly/AllWidgets/Divider.dart';
import 'package:Elderly/Assistants/assistantMethods.dart';
import 'package:Elderly/DataHandler/appData.dart';
import 'package:Elderly/services/AuthService.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'mainScreen.dart';

class Googlemap extends StatefulWidget
{
  static const String idSCreen = "Googlemap";

  @override
  _GooglemapState createState() => _GooglemapState();
}

class _GooglemapState extends State<Googlemap> {
  Completer<GoogleMapController> _controllerGoogleMap = Completer();
   GoogleMapController newGoogleMapController;

   GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

    Position currentPosition;
    var geoLocator = Geolocator();
     double bottomPaddingOfMap = 0;

    void locatePosition() async{

      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

      currentPosition = position;

       LatLng latLatPosition = LatLng(position.latitude, position.longitude);

       CameraPosition cameraPosition = new CameraPosition(target: latLatPosition, zoom: 14);

       newGoogleMapController.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

       String address = await AssistantsMehods.searchCoordinateAddress(position,context);
       print('This is your Address::'+address);

    }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0.0,
        title: Text(
          'Google Map',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.fast_forward_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, mainScreen.idSCreen, (route) => false);
            },
          )
        ],
      ),
       drawer:Container(
         color: Colors.white,
         width: 255.0,
         child: ListView(
           children: [
             Container(
               height: 165.0,
               child: DrawerHeader(
                 decoration: BoxDecoration(color: Colors.white),
                 child: Row(
                   children: [
                     Image.asset('',height: 65.0, width: 65.0,),
                     SizedBox(width: 16.0,),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text('Profile Name',style: TextStyle(fontSize: 16.0,fontFamily: 'Brand-Bold'),),
                         SizedBox(height: 6.0,),
                         Text('Visit Profile'),
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
               title: Text('History',style: TextStyle(fontSize: 15.0),),
             ),
             ListTile(
               leading: Icon(Icons.person),
               title: Text('Visit Profile',style: TextStyle(fontSize: 15.0),),
             ),
             ListTile(
               leading: Icon(Icons.info),
               title: Text('About',style: TextStyle(fontSize: 15.0),),
             ),

           ],
         ),
       ),
      body: Stack(
        children: [
          GoogleMap(
            padding: EdgeInsets.only(bottom: bottomPaddingOfMap),
            mapType: MapType.normal,
            myLocationButtonEnabled:true,
            initialCameraPosition: _kGooglePlex,
            myLocationEnabled: true,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: true,
            onMapCreated: (GoogleMapController controller)
            {
              _controllerGoogleMap.complete(controller);
              newGoogleMapController = controller;
              setState(() {
                bottomPaddingOfMap = 300.0;
              });
               locatePosition();
            },
          ),
         Positioned(
           top: 45.0,
            left: 22.0,
            child: GestureDetector(
              onTap: (){
              scaffoldKey.currentState.openDrawer();
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 6.0,
                      spreadRadius: 0.5,
                      offset: Offset(
                        0.7,
                        0.7,
                      ),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.menu,color: Colors.black,),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: Container(
              height: 300.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0)),
                boxShadow: [
                  BoxShadow(
                     color: Colors.black,
                    blurRadius: 16.0,
                    spreadRadius: 0.5,
                    offset: Offset(0.7,0.7),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 6.0,),
                    Text('Help people',style: TextStyle(fontSize: 12.0),),
                    Text('Where to?',style: TextStyle(fontSize: 20.0,fontFamily: "Brand-Bold"),),
                    SizedBox(height: 20.0,),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen(),),);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 6.0,
                              spreadRadius: 0.5,
                              offset: Offset(0.7,0.7),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.search,color: Colors.blue,),
                            SizedBox(width: 30.0,),
                            Text('Search Drop off')
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
                            Text(
                              Provider.of<AppData>(context).pickUpLocation != null?
                              Provider.of<AppData>(context).pickUpLocation.placeName:"Add Home"
                              ),
                            SizedBox(height: 4.0,),
                            Text('Your living home address',style: TextStyle(color: Colors.black45,fontSize: 12.0),),
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
                            Text('Add work'),
                            SizedBox(height: 4.0,),
                            Text('Your office address',style: TextStyle(color: Colors.black45,fontSize: 12.0),),
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
