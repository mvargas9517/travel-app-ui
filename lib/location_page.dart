import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'model/card.dart';


class LocationPage extends StatefulWidget {
  final Location location;

  LocationPage({this.location});

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: SingleChildScrollView(
              child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height,
                    color: Colors.deepOrange[400],
                  ),
                  Positioned(
                    bottom: 20,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.arrow_forward_ios, color: Colors.white.withOpacity(0.3), size: 15.0,),
                            Icon(Icons.arrow_forward_ios, color: Colors.white.withOpacity(0.4), size: 16.0,),
                            Icon(Icons.arrow_forward_ios, color: Colors.white.withOpacity(0.5), size: 17.0,),
                            Icon(Icons.arrow_forward_ios, color: Colors.white.withOpacity(0.8), size: 18.0,),
                            SizedBox(width: 6),
                            RotatedBox(child: Icon(Icons.local_airport, color: Colors.white, size: 35.0, ), quarterTurns: 1,),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.91,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0),
                      ),
                    ),
                  ),
                  Stack(
                      children: <Widget>[ 
                      Container(
                      height: 375,
                      child: Hero(
                            tag: widget.location.imageUrl,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(40.0),
                                bottomRight: Radius.circular(40.0),
                              ),
                              child: Container(
                                height: 300,
                                child: Image.asset(widget.location.imageUrl,
                                 fit: BoxFit.cover,),
                      ),
                    ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 190,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.minimize, size: 35, color: Colors.deepOrange,),
                    Icon(Icons.fiber_manual_record, size: 12, color: Colors.grey[600]),
                    Icon(Icons.fiber_manual_record, size: 12, color: Colors.grey[600]),
                  ],
                ),
              ),
              Positioned(
                      right: 25,
                      top: 60,
                      child: Icon(Icons.file_upload, size: 30.0, color: Colors.white,),
              ),
              Positioned(
                top: 52,
                left: 25,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Icon(
                                Icons.keyboard_arrow_left,
                                size: 40.0,
                                color: Colors.white,
                              ),
                    ),
                    SizedBox(width: 35.0),
                    Container(
                      height: 45.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[300].withOpacity(0.4),
                        borderRadius: BorderRadius.all(Radius.circular(30.0)
                        ,),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.white),
                          Text(widget.location.rating, style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
                      ], 
                      ),
              Positioned(
                top: 390,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.41,
                          width: MediaQuery.of(context).size.width - 60.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 3),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_on,
                                  color: Colors.grey),
                                  SizedBox(width: 8.0,),
                                  Text(widget.location.placetwo, style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.grey,
                                  ),)
                                ],
                              ),
                              SizedBox(height: 3),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(widget.location.placethree, style: TextStyle(
                                    fontSize: 35.0,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 1.5,
                                  ),),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: Container(
                                      height: 80.0,
                                      width: 55.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25.0),
                                        color: Colors.grey[300].withOpacity(0.5),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 25.0),
                                        child: Icon(Icons.favorite_border, size: 25.0,),
                                      )),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25.0),
                              Stack(
                                  children: <Widget>[ 
                              Row(
                                  children: <Widget>[
                                    Text('Recommendation', style: TextStyle(
                                      fontSize: 16.0
                                    ),),
                                SizedBox(width: 8.0),
                                Stack(
                                    children: <Widget> [
                                    Container(height: 40.0, width: 175.0,),
                                    Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.black,
                                    image: DecorationImage(
                                      image: AssetImage('images/person0.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  ),
                                  Positioned(
                                    left: 30,
                                    child: Container(
                                    height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.deepOrange[400]),
                                child: Center(
                                  child: Text('+17',
                                      style: TextStyle(
                                          fontSize: 14.0, color: Colors.white)),
                                    ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 25,
                                    top: 8,
                                    child: Text('More', style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.5,
                                      )),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 8,
                                    child: Icon(Icons.keyboard_arrow_down, color: Colors.grey,),
                                  ),
                                ],
                                ),
                            ],
                          ),
                          ],
                        ),
                        SizedBox(height: 45.0),
                        Text(widget.location.description, style: TextStyle(
                          fontFamily: 'Monserrat-Regular',
                            fontSize: 15.0,
                            letterSpacing: 1.0,
                            wordSpacing: 0.5,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                        ),),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
            ),
        ],
      ),
     ],
   ),
  ),
 ),
);
}
}