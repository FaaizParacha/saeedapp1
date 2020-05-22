import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_container/responsive_container.dart';
import 'package:saeedapp1/constants.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool _rememberMeFlag = false;
  @override
  Widget build(BuildContext context) {
    showAlertDialog(BuildContext context) {
      // set up the buttons


      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0)
        ) ,
        title: Column(
          children: <Widget>[
            Image.asset('assets/alertballon.png'),
            sizedBoxHeightmin,
            Text('Success !',style: TextStyle(color: appColor),)
          ],
        ),
        elevation: 5.0,
        content: Text('Your order has been confirmed.\n '
                       'we will send you an email shortly.'),
        );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        centerTitle: true,
        title: Text('Payment',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            elevation: 5.0,
            child: Column(
              children: <Widget>[
                sizedBoxHeight,
                Padding(
                  padding: const EdgeInsets.only(left:20.0,top: 10.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Cardholder Name',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20,top: 10.0),
                  child:  TextFormField(
                    decoration:  InputDecoration(
                      filled: true,
                        fillColor: Colors.white,
                        border:  OutlineInputBorder(
                          borderRadius:  BorderRadius.circular(8.0),
                          borderSide:  BorderSide(
                          ),
                        ),
                      //fillColor: Colors.green
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),

                sizedBoxHeight,
                Padding(
                  padding: const EdgeInsets.only(left:20.0,top: 10.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Enter the amount',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right: 20,top: 10.0),
                  child:  TextFormField(
                    decoration:  InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border:  OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(8.0),
                        borderSide:  BorderSide(
                        ),
                      ),
                      //fillColor: Colors.green
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                sizedBoxHeight,
                Padding(
                  padding: const EdgeInsets.only(left:20.0,top: 10.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Card number',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700
                    ),),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(left:20.0,right: 20,top: 10.0),
                          child: TextFormField(
                            decoration:  InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border:  OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(8.0),
                                borderSide:  BorderSide(
                                ),
                              ),
                              //fillColor: Colors.green
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),),
                    Expanded(
                        flex: 1,
                        child: Image.asset('assets/visa.png'))
                  ],
                ),
                 sizedBoxHeight,
                Row(
                  children: <Widget>[
                   Expanded(
                     flex: 2,
                     child: Column(
                       children: <Widget>[
                         Padding(
                           padding: const EdgeInsets.only(left:20.0,top: 10.0),
                           child: Align(
                             alignment: Alignment.topLeft,
                             child: Text('expire date',style: TextStyle(
                                 color: Colors.black,
                                 fontWeight: FontWeight.w700
                             ),),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(left:20.0,right: 20,top: 10.0),
                           child: TextFormField(
                             decoration:  InputDecoration(
                               filled: true,
                               fillColor: Colors.white,
                               border:  OutlineInputBorder(
                                 borderRadius:  BorderRadius.circular(8.0),
                                 borderSide:  BorderSide(
                                 ),
                               ),
                               //fillColor: Colors.green
                             ),
                             keyboardType: TextInputType.number,
                           ),
                         ),
                       ],
                     ),
                   ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left:20.0,top: 10.0),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text('CVV',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700
                              ),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:20.0,right: 20,top: 10.0),
                            child: TextFormField(
                              decoration:  InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border:  OutlineInputBorder(
                                  borderRadius:  BorderRadius.circular(8.0),
                                  borderSide:  BorderSide(
                                  ),
                                ),
                                //fillColor: Colors.green
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                sizedBoxHeight,sizedBoxHeight,
                Row(
                  children: <Widget>[
                    Checkbox(
                      activeColor: appColor,
                      value: _rememberMeFlag,
                      onChanged: (value) => setState(() {
                        _rememberMeFlag = !_rememberMeFlag;
                      }),
                    ),
                    Text(
                      "Agree terms and conditions",
                      style: new TextStyle(color: Colors.black,fontSize: 15.0,
                          fontWeight: FontWeight.w700),
                    ),

                  ],
                ),
                sizedBoxHeight,sizedBoxHeight,
                Padding(
                  padding: const EdgeInsets.only(left:25.0,right: 25,top: 10.0),
                  child: MaterialButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                    ),
                    minWidth: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/12,
                    color:appColor,
                    child: Text('PAY',
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        color: Colors.white,
                        letterSpacing: 1.0
                      ),),
                    elevation: 2,
                    onPressed: (){
                      showAlertDialog(context );

                    },
                  ),
                ),sizedBoxHeight,sizedBoxHeight
              ],
            ),
          ),
        ),
      ),
    );
  }
}
