import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'login.dart';
class ResetPasswordClass extends StatefulWidget {
  @override
  _ResetPasswordClassState createState() => _ResetPasswordClassState();
}

class _ResetPasswordClassState extends State<ResetPasswordClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/background.png',
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fill,
                )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 3,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:10.0,bottom: 10),
                      child: Text(
                        "Reset password",
                        style: TextStyle(
                            fontFamily: 'Gotham',
                            fontSize: 18.0),
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
                        child:   TextFormField(
                          obscureText: true,
                          decoration:  InputDecoration(
                              filled: true,
                              hintText: '',
                              labelText: "Confirm Password",
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
                        child: Text('RESET',
                          style: TextStyle(
                            color: Colors.white,
                          ),),
                        elevation: 2,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(8.0),
                        ),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                      ),
                    ),sizedBoxHeight,
                  ],),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
