import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_container/responsive_container.dart';
import 'package:responsive_widgets/responsive_widgets.dart';

import 'constants.dart';
import 'login.dart';
class SignUpClass extends StatefulWidget {
  @override
  _SignUpClassState createState() => _SignUpClassState();
}

class _SignUpClassState extends State<SignUpClass> {
  @override
  Widget build(BuildContext context) {
    ResponsiveWidgets.init(context,
      height: 1920, // Optional
      width: 1080, // Optional
      allowFontScaling: true, // Optional
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('assets/background.png',
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fitWidth,
                    )),
                Positioned(
                  top: 150,
                  left: 180,
                  child: Text("SIGN UP",style: TextStyle(
                      color: appColor,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20,top: 10.0),
              child: TextFormField(
                decoration:  InputDecoration(
                  filled: true,
                    hintText: '',
                    labelText: "Name",
                    fillColor: Colors.white,
                    border:  OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(8.0),
                      borderSide:  BorderSide(
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(top: 8.0,left: 8.0),
                      child: FaIcon(FontAwesomeIcons.user,size: 18.0,),)

                  //fillColor: Colors.green
                ),
                keyboardType: TextInputType.text,

              )
            ),

            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20,top: 10.0),
              child:  TextFormField(
                decoration:  InputDecoration(
                    filled: true,
                    hintText: '',
                    labelText: "Sur Name",
                    fillColor: Colors.white,
                    border:  OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(8.0),
                      borderSide:  BorderSide(
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(top: 8.0,left: 8.0),
                      child: FaIcon(FontAwesomeIcons.user,size: 18.0,),)

                  //fillColor: Colors.green
                ),
                keyboardType: TextInputType.text,

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20,top: 10.0),
              child: TextFormField(
                decoration:  InputDecoration(
                    hintText: '',
                    labelText: "Telephone",
                    filled: true,
                    fillColor: Colors.white,
                    border:  OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(8.0),
                      borderSide:  BorderSide(
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(top: 8.0,left: 8.0),
                      child: FaIcon(FontAwesomeIcons.phone,size: 18.0,),)

                  //fillColor: Colors.green
                ),
                keyboardType: TextInputType.number,

              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20,top: 10.0),
              child:  TextFormField(
                decoration:  InputDecoration(
                    hintText: '',
                    labelText: "Email",
                    filled: true,
                    fillColor: Colors.white,
                    border:  OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(8.0),
                      borderSide:  BorderSide(
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(top: 8.0,left: 8.0),
                      child:  FaIcon(FontAwesomeIcons.envelope,size: 18.0,),)

                  //fillColor: Colors.green
                ),
                keyboardType: TextInputType.emailAddress,

              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20,top: 10.0),
                child:   TextFormField(
                  obscureText: true,
                  decoration:  InputDecoration(
                      hintText: '',
                      labelText: "Password",
                      filled: true,
                      fillColor: Colors.white,
                      border:  OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(8.0),
                        borderSide:  BorderSide(
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: FaIcon(FontAwesomeIcons.eyeSlash),
                      )

                    //fillColor: Colors.green
                  ),
                  keyboardType: TextInputType.visiblePassword,

                )
            ),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20,top: 10.0),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/12,
                color:appColor,
                child: Text('REGISTER',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0
                  ),),
                elevation: 2,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8.0),
                ),
                onPressed: (){

                },
              ),
            ),sizedBoxHeight,sizedBoxHeight,sizedBoxHeight,
            Text('Already have an account?',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Gotham',
              ),),
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20,top: 10.0),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/12,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8.0),
                ),
                color:appColor,
                child: Text('LOGIN',
                  style: TextStyle(
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),),
                elevation: 2,
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
            ),sizedBoxHeight,
          ],

        ),
      ),
    );
  }
}

