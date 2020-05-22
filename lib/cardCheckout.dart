import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_container/responsive_container.dart';
import 'package:saeedapp1/Payment.dart';
import 'package:saeedapp1/Shipping.dart';
import 'package:saeedapp1/constants.dart';
import 'package:saeedapp1/homePage.dart';

class CardCheckout extends StatefulWidget {
  @override
  _CardCheckoutState createState() => _CardCheckoutState();
}

class _CardCheckoutState extends State<CardCheckout> {
  var rating = 0.0;
  int _n  = 0;
  void minus() {
    setState(() {
      if (_n != 0)
        _n--;
    });
  }
  void add() {
    setState(() {
      _n++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        title: Text('My Cart',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset("assets/girl.png",
                        fit: BoxFit.fill,
                        width: MediaQuery.of(context).size.width,
                      ),sizedBoxHeightmin,
                       Text('VR BOX 3D VIDEO GLASSES'),sizedBoxHeightmin,
                      Text('\$80.99',style: TextStyle(color: Colors.red,
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0
                      ),),sizedBoxHeightmin,
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Row(
                           children: <Widget>[
                             Text('\$99.99',style: TextStyle(color: Colors.grey),),
                             sizedBoxWidth,sizedBoxWidth,
                             Text('-37%',style: TextStyle(color: Colors.black),),
                           ],
                         ),
                         Row(children: <Widget>[
                           GestureDetector(
                               onTap: minus,
                               child: FaIcon(FontAwesomeIcons.minus ,size: 18.0,)),
                           sizedBoxwidthmin,
                           ResponsiveContainer(
                             widthPercent: 10,
                             heightPercent: 5,
                             child: Card(
                               child: Center(child: Text('$_n')),
                             ),
                           ),sizedBoxwidthmin,
                           GestureDetector(
                               onTap: add,
                               child: FaIcon(FontAwesomeIcons.plus, size: 18.0,)),
                         ],)
                       ],
                     ),

                    ],
                  ),
                ),
              ),
            ),sizedBoxHeight,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Shipping: ',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                ),),
                Text('  \$80.99',style: TextStyle(color: Colors.red,
                    fontWeight: FontWeight.w900,
                    fontSize: 18.0
                ),)
              ],
            ),sizedBoxHeight,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Total: ',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),),
                Text('  \$160.99',style: TextStyle(color: Colors.red,
                    fontWeight: FontWeight.w900,
                    fontSize: 18.0
                ),)
              ],
            ),sizedBoxHeight,
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20,top: 10.0),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/12,
                color:Colors.red,
                child: Text('Check Out',
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
                  MaterialPageRoute(builder: (context) =>Shipping()),
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
