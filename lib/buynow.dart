import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import 'constants.dart';

class BuyNow extends StatefulWidget {
  @override
  _BuyNowState createState() => _BuyNowState();
}

class _BuyNowState extends State<BuyNow> {
  var rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Image.asset("assets/girl.png",
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.width,
                          ),
                          Positioned(
                            top: 10.0,
                            left: 10,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.grey.shade200,
                              child: IconButton(
                                  icon: Icon(Icons.arrow_back_ios,
                                    color: Colors.white,size: 15,),
                                  onPressed: (){
                                    Navigator.pop(context);
                                  })
                            ),
                          ),
                        ],
                      ),sizedBoxHeight,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('\$80.99',style: TextStyle(color: Colors.red,
                              fontWeight: FontWeight.w900,
                              fontSize: 22.0
                          ),),
                          IconButton(icon: Icon(Icons.favorite_border,
                            color:appColor,
                            size: 20,),
                              onPressed: (){}
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text('\$99.99',style: TextStyle(color: Colors.grey),),
                          sizedBoxWidth,sizedBoxWidth,
                          Text('-37%',style: TextStyle(color: Colors.black),),
                        ],
                      ),sizedBoxHeight,
                      Text('VR BOX 3D VIDEO GLASSES'),
                      sizedBoxHeight,
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
                          ),sizedBoxwidthmin,
                          Text('4.5'),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Specifications',style: TextStyle(
                            color: Colors.grey
                          ),),sizedBoxHeightmin,
                          Text('Brand,Model,Box,Content',style: TextStyle(
                              color: Colors.black
                          ),),
                        ],
                      ),
                      IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,), onPressed: (){})
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Service',style: TextStyle(
                              color: Colors.grey
                          ),),sizedBoxHeightmin,
                          Text('7 Days Returns',style: TextStyle(
                              color: Colors.black
                          ),),sizedBoxHeightmin,
                          Text('change of mind is not applicable',style: TextStyle(
                              color: Colors.grey
                          ),),sizedBoxHeightmin,
                          Text('Warranty not available',style: TextStyle(
                              color: Colors.black
                          ),),sizedBoxHeightmin,
                        ],
                      ),
                      IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,), onPressed: (){})
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      color: appColor,
                      onPressed: (){},
                      child: Text('Buy Now',style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.0
                      ),),
                    ),
                  ),sizedBoxWidth,
                  sizedBoxWidth,
                  Expanded(
                    child: RaisedButton(
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      onPressed: (){},
                      child: Text('Add to Cart',style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.0
                      ),),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
