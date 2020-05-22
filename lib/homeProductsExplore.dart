import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';

import 'constants.dart';

class HomeProducts extends StatefulWidget {
  @override
  _HomeProductsState createState() => _HomeProductsState();
}

class _HomeProductsState extends State<HomeProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ResponsiveContainer(
                    widthPercent: 100,
                    heightPercent: 30,
                    child: Container(
                        child: Image.asset('assets/homeexplore.png',
                          alignment: Alignment.topCenter,
                          fit: BoxFit.fitWidth,
                        )),
                  ),
                  Positioned(
                    top: 15.0,
                    left: 20,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.grey.shade200,
                      child: IconButton(
                          icon: Icon(Icons.arrow_back_ios,
                            color: Colors.white,size: 15,),
                          onPressed: (){Navigator.pop(context);})
                    ),
                  ),
                  Positioned.fill(
                      top: 50,
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
                              labelText: 'Search category'
                          ),
                        ),
                      )),
                  Positioned.fill(
                      top: 150,
                      left: 310,
                      child: Image.asset("assets/specialoffer.png")
                  ),
                  Positioned(
                      top: 150,
                      left: 10,
                      child: Image.asset("assets/discount.png")
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:10.0,right: 20,left: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/bat.png',
                                height: 70,
                                fit: BoxFit.fill,
                              ),
                              sizedBoxHeight,sizedBoxHeight,
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                                ),
                                color: Colors.grey.shade300,
                                onPressed: (){},
                              child: Text('Sports'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/mobile.png',
                                height: 70,
                                fit: BoxFit.fill,
                              ),
                              sizedBoxHeight,sizedBoxHeight,
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)
                                ),
                                color: Colors.grey.shade300,
                                onPressed: (){},
                                child: Text('Mobiles'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10.0,right: 20,left: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/watch.png',
                                height: 70,
                                fit: BoxFit.fill,
                              ),
                              sizedBoxHeight,sizedBoxHeight,
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)
                                ),
                                color: Colors.grey.shade300,
                                onPressed: (){},
                                child: Text('Watches'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/rowimagelast.png',
                                height: 70,
                                fit: BoxFit.fill,
                              ),
                              sizedBoxHeight,sizedBoxHeight,
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)
                                ),
                                color: Colors.grey.shade300,
                                onPressed: (){},
                                child: Text('Services'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:10.0,right: 20,left: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/computer.png',
                                height: 70,
                                fit: BoxFit.fill,
                              ),
                              sizedBoxHeight,sizedBoxHeight,
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)
                                ),
                                color: Colors.grey.shade300,
                                onPressed: (){},
                                child: Text('Computers'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/facewash.png',
                                height: 70,
                                fit: BoxFit.fill,
                              ),
                              sizedBoxHeight,sizedBoxHeight,
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)
                                ),
                                color: Colors.grey.shade300,
                                onPressed: (){},
                                child: Text('Facewash'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:10.0,right: 20,left: 20),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/bat.png',
                                height: 70,
                                fit: BoxFit.fill,
                              ),
                              sizedBoxHeight,sizedBoxHeight,
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)
                                ),
                                color: Colors.grey.shade300,
                                onPressed: (){},
                                child: Text('Sports'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/bat.png',
                                height: 70,
                                fit: BoxFit.fill,
                              ),
                              sizedBoxHeight,sizedBoxHeight,
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)
                                ),
                                color: Colors.grey.shade300,
                                onPressed: (){},
                                child: Text('Sports'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),sizedBoxHeight,
            ],
          ),
        ),
    );
  }
}
