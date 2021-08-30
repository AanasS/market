import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/Account/address/add_address.dart';
import 'package:market/Account/address/delete_address.dart';
import 'package:market/Account/address/edit_address.dart';
import 'package:market/Account/order/OrderDetails.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      appBar:
          defaultAppBar(title: "Address", isLeading: true, context: context),
      body: SafeArea(
          child: Container(
        padding: EdgeInsetsDirectional.all(16),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(width: 2, color: bgGrey.withOpacity(.2)))),
        child: ListView.builder(
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddAddress()));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: primary.withOpacity(.7))),
              padding: EdgeInsetsDirectional.all(16),
              margin: EdgeInsetsDirectional.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  defaultText(
                      text: "Priscekila",
                      size: 14,
                      fontWeight: FontWeight.w700,
                      color: bgDark,
                      letterSpacing: 0),
                  SizedBox(
                    height: 16,
                  ),
                  defaultText(
                      text:
                          "3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States",
                      size: 12,
                      fontWeight: FontWeight.w400,
                      color: bgGrey,
                      letterSpacing: 0),
                  SizedBox(
                    height: 16,
                  ),
                  defaultText(
                      text: "+201061949501",
                      size: 12,
                      fontWeight: FontWeight.w400,
                      color: bgGrey,
                      letterSpacing: 0),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      defaultButton(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => EditAddress()));
                          }
                      , text: "Edit", width: 80),
                      SizedBox(
                        width: 24,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DeleteAddress()));
                        },
                        child: Icon(
                          Icons.delete_outline,
                          color: bgGrey,
                          size: 30,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          itemCount: 5,
        ),
      )),
    );
  }
}
