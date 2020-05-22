import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:saeedapp1/Payment.dart';
import 'package:saeedapp1/constants.dart';

class Shipping extends StatefulWidget {
  @override
  _ShippingState createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  Country _selected;
  int selectedRadioTile;
  int selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        title: Text('Shipping',style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w900
        ),),
          centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            sizedBoxHeight,sizedBoxHeight,
            Padding(
              padding:const EdgeInsets.only(right:20.0,left: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(color: Colors.grey)
                ),
                keyboardType: TextInputType.number,
              ),
            ),sizedBoxHeight,
            Padding(
              padding: const EdgeInsets.only(right:20.0,left: 20,top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('City',style: TextStyle(color: Colors.grey),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:20.0,left: 20,top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: CountryPicker(
                  dense: false,
                  showFlag: false,  //displays flag, true by default
                  showDialingCode: false, //displays dialing code, false by default
                  showName: true, //displays country name, true by default
                  showCurrency: false, //eg. 'British pound'
                  showCurrencyISO: false, //eg. 'GBP'
                  onChanged: (Country country) {
                    setState(() {

                     _selected = country;
                    });
                  },
                  selectedCountry: _selected,
                ),
              ),
            ),Padding(
              padding:const EdgeInsets.only(right:20.0,left: 20),
              child: Divider(thickness: 1.0,color: Colors.grey,),
            ),sizedBoxHeight,
            Padding(
              padding: const EdgeInsets.only(right:20.0,left: 20),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'Address',
                    labelStyle: TextStyle(color: Colors.grey)
                ),
                keyboardType: TextInputType.text,
              ),
            ),sizedBoxHeight,
            Padding(
              padding: const EdgeInsets.only(right:20.0,left: 20,top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Country',style: TextStyle(color: Colors.grey),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:20.0,left: 20,top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: CountryPicker(
                  dense: false,
                  showFlag: false,  //displays flag, true by default
                  showDialingCode: false, //displays dialing code, false by default
                  showName: true, //displays country name, true by default
                  showCurrency: false, //eg. 'British pound'
                  showCurrencyISO: false, //eg. 'GBP'
                  onChanged: (Country country) {
                    setState(() {
                      _selected = country;
                    });
                  },
                  selectedCountry: _selected,
                ),
              ),
            ),
            Padding(
              padding:const EdgeInsets.only(right:20.0,left: 20),
              child: Divider(thickness: 1.0,color: Colors.grey,),
            ),
            sizedBoxHeight,
            Padding(
              padding: const EdgeInsets.only(right:20.0,left: 20,top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text('Payment',style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.w900,
                fontSize: 18.0
                ),),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: RadioListTile(
                      value: 0,
                      groupValue: selectedRadioTile,
                      title: Text("Debit",style: TextStyle(color: Colors.black),),
                      onChanged: (val) {
                        print("Radio Tile pressed $val");
                        setSelectedRadioTile(val);
                      },
                      activeColor: appColor,
                      selected: true,
                    ),
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    value: 2,
                    groupValue: selectedRadioTile,
                    title: Text("Credit card",style: TextStyle(color: Colors.black),),
                    onChanged: (val) {
                      print("Radio Tile pressed $val");
                      setSelectedRadioTile(val);
                    },
                    activeColor: appColor,
                    selected: false,
                  ),
                ),
              ],
            ),
            InkWell(
              child: Text('Order Summary',style: TextStyle(
                decoration: TextDecoration.underline,
                  decorationThickness: 2.0,
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w900),),
            ),sizedBoxHeight,
            Padding(
              padding: const EdgeInsets.only(right:25.0,left: 25,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Items:',style: TextStyle(color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),),
                  Text('3',style: TextStyle(color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:25.0,left: 25,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Shipping:',style: TextStyle(color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),),
                  Text('\$80.99',style: TextStyle(color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:25.0,left: 25,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Total Amount:',style: TextStyle(color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),),
                  Text('\$160.99',style: TextStyle(color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w900),),
                ],
              ),
            ),sizedBoxHeight,
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20,top: 10.0),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/12,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8.0),
                ),
                color:appColor,
                child: Text('Continue To Payment',
                  style: TextStyle(
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),),
                elevation: 2,
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Payment()),
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
