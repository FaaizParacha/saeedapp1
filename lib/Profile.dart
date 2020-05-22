import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_container/responsive_container.dart';

import 'constants.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                    child: Image.asset('assets/profile.png',
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fitWidth,
                    )),
                Positioned(
                    top: 230,
                    left: 40.0,
                    child: Image.asset('assets/profilesmall.png') ,
                    ),
                Positioned(
                  top: 270,
                    left: 75.0,
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: appColor,
                      child: Center(
                        child: Icon(Icons.camera_alt,color: Colors.white,size: 18,),
                      ),
                    ),
                  )
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: appColor,
                      child: Center(
                        child: Icon(FontAwesomeIcons.user,color: Colors.white,size: 18,),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(right:15.0),
                    child: TextFormField(
                      decoration:  InputDecoration(
                        suffixIcon: Icon(Icons.edit)
                        //fillColor: Colors.green
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
                ),
              ],
            ),sizedBoxHeight,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: appColor,
                      child: Center(
                        child: Icon(FontAwesomeIcons.envelope,color: Colors.white,size: 18,),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(right:15.0),
                    child: TextFormField(
                      decoration:  InputDecoration(
                          suffixIcon: Icon(Icons.edit)
                        //fillColor: Colors.green
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
              ],
            ),sizedBoxHeight,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: appColor,
                      child: Center(
                        child: Icon(FontAwesomeIcons.mobileAlt,color: Colors.white,size: 18,),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(right:15.0),
                    child: TextFormField(
                      decoration:  InputDecoration(
                          suffixIcon: Icon(Icons.edit)
                        //fillColor: Colors.green
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
              ],
            ),sizedBoxHeight,
            Padding(
              padding: const EdgeInsets.only(left:25.0,right: 25,top: 10.0),
              child: MaterialButton(
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8.0),
                ),
                minWidth: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/12,
                color:appColor,
                child: Text('UPDATE PROFILE',
                  style: TextStyle(
                      fontFamily: 'Gotham',
                      color: Colors.white,
                      letterSpacing: 1.0
                  ),),
                elevation: 2,
                onPressed: (){},
              ),
            ),sizedBoxHeight
          ],
        ),)
      );

  }
}
