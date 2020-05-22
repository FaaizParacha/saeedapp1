import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saeedapp1/buynow.dart';
import 'package:saeedapp1/homeProductsExplore.dart';

import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'Shipping.dart';
import 'constants.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _show = true;
  var rating = 0.0;
  bool changecolor;
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
                    child: Image.asset('assets/home.png',
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fitWidth,
                    )),
                Positioned.fill(
                    top: 20,
                    child: Padding(
                      padding: const EdgeInsets.only(left:20.0,right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border:  OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(30.0),
                              borderSide:  BorderSide(
                              ),
                            ),
                            fillColor: Colors.white70,
                            filled: true,
                            prefixIcon: Icon(Icons.search,color: appColor,),
                            labelText: 'Search products'
                        ),
                      ),
                    )),
                Positioned.fill(
                    top: 130,
                    left: 320,
                    child: Image.asset("assets/tag.png")
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeProducts()));
                    },
                    child: reusablecard(
                      image: Image.asset('assets/rowelement1.png'),
                      text: Text('Categories',style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600
                      ),),
                    ),
                  ),
                  reusablecard(
                    image: Image.asset('assets/watch.png'),
                    text: Text('Watches',style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600
                    ),),
                  ),
                  reusablecard(
                    image: Image.asset('assets/mobile.png'),
                    text: Text('Mobiles',style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600
                    ),),
                  ),
                  reusablecard(
                    image: Image.asset('assets/bat.png'),
                    text: Text('Sports',style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600
                    ),),
                  ),
                  reusablecard(
                    image: Image.asset('assets/rowimagelast.png'),
                    text: Text('Services',style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600
                    ),),
                  ),
                  reusablecard(
                    image: Image.asset('assets/rowelement1.png'),
                    text: Text('Categories',style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600
                    ),),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    reusablecardofhomemain(
                      rating: rating,
                    text1:  Text('Oppo G4001 u(Glow)'),
                    text2: Text('\$69.99',style: TextStyle(color: Colors.red),),
                    text3:Text('\$99.99',style: TextStyle(color: Colors.grey),),
                    text4: Text(''),
                    images: Image.asset("assets/devices.png"),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BuyNow()));
                      },
                      child: reusablecardofhomemain(
                        text1:  Text('VR BOX 3D VIDEO GLASSES'),
                        text2: Text('\$80.99',style: TextStyle(color: Colors.red),),
                        text3:Text('\$99.99',style: TextStyle(color: Colors.grey),),
                        text4: Text(''),
                        rating: rating,
                        images: Image.asset("assets/girl.png"),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    reusablecardofhomemain(
                      text1:  Text('Oppo G4001 u(Glow)'),
                      text2: Text('\$69.99',style: TextStyle(color: Colors.red),),
                      text3:Text('\$99.99',style: TextStyle(color: Colors.grey),),
                      text4: Text(''),
                      rating: rating,
                      images: Image.asset("assets/devices.png"),
                    ),
                    reusablecardofhomemain(
                      text1:  Text('VR BOX 3D VIDEO GLASSES'),
                      text2: Text('\$80.99',style: TextStyle(color: Colors.red),),
                      text3:Text('\$99.99',style: TextStyle(color: Colors.grey),),
                      text4: Text(''),
                      rating: rating,
                      images: Image.asset("assets/girl.png"),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class reusablecardofhomemain extends StatelessWidget {
 reusablecardofhomemain({this.rating,this.images,this.text1,this.text2,this.text3,this.text4});

  final double rating;
  final Widget images;
  final Text text1;
  final Text text2;
 final Text text3;
 final Text text4;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            images,
            sizedBoxHeightmin,
           text1,  sizedBoxHeightmin,
            text2, sizedBoxHeightmin,
            Row(
              children: <Widget>[
                text3,
                sizedBoxWidth,
                text4,
              ],
            )  ,sizedBoxHeightmin,
           Row(
             children: <Widget>[
               SmoothStarRating(
                   allowHalfRating: true,
                   onRated: (v) {
                   },
                   starCount: 5,
                   rating: rating,
                   size: 20.0,
                   color: Colors.amberAccent,
                   borderColor: Colors.amberAccent,
                   spacing:0.0
               ),
               Text('(3)',style: TextStyle(color: Colors.grey,),),
               sizedBoxWidth,
               IconButton(icon: Icon(Icons.favorite_border,
                 color:appColor,
               size: 20,),
                   onPressed: (){}
               )
             ],
           )
          ],
        ),
      ),
    );
  }
}

class reusablecard extends StatelessWidget {
  reusablecard({this.image,this.text});
  final Text text;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: image
            )
        ),text
      ],
    );
  }
}