import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/Model/Address/addressModel.dart';
import 'package:market/View/Layout/CartScreen/PaymentMethod.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class ShipTo extends StatefulWidget {
  @override
  _ShipToState createState() => _ShipToState();
}

class _ShipToState extends State<ShipTo> {
  bool selectedAddress =false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: light,
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(4.0)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: defaultText(
            text: "Ship To",
            size: 16,
            fontWeight: FontWeight.w700,
            color: bgDark,
            letterSpacing: 1),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: bgGrey,
            size: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(

            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: address.length,
                itemBuilder: (BuildContext context, int index){
                  return shipToAdress(
                      ontap:(){
                        setState(() {
                         address[index]['selected']=! address[index]['selected'];
                        });
                      },
                      isSelected:  address[index]['selected'],
                      title: address[index]['title'],
                      details: address[index]['details'],
                      phoneNumber: address[index]['phoneNumber'],
                      edit: (){},
                      delete: (){},
                  );
                },
              ),
              defaultButton(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethod()));
                  },
                  text: 'Next',
              )
            ],
          ),
        ),
      ),
    );
  }
}
