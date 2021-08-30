import 'package:flutter/material.dart';
import 'package:market/Account/Profile.dart';
import 'package:market/Account/address/address_screen.dart';
import 'package:market/Account/order/OrderScreen.dart';
import 'package:market/Account/payment/PaymentMethod.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class AccountHome extends StatelessWidget {

  Color hoverColor = Colors.transparent ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "Account",context: context,isLeading: true),
      body: SafeArea(
        child: Container(
          padding: EdgeInsetsDirectional.all(16),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 2,
                color: bgGrey.withOpacity(.3)
              )
            )
          ),
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Profile()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/User.png"),
                      SizedBox(width: 16 ,),
                      defaultText(
                          text: "Profile",
                          size: 12,
                          fontWeight: FontWeight.w700,
                          color: bgDark,
                          letterSpacing: 1)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderScreen()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/bag.png"),
                      SizedBox(width: 16 ,),
                      defaultText(
                          text: "Order",
                          size: 12,
                          fontWeight: FontWeight.w700,
                          color: bgDark,
                          letterSpacing: 1)
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddressScreen()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/Location.png"),
                      SizedBox(width: 16 ,),
                      defaultText(
                          text: "Address",
                          size: 12,
                          fontWeight: FontWeight.w700,
                          color: bgDark,
                          letterSpacing: 1)
                    ],
                  ),
                ),
              ),

              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentMethod()));
                },
                hoverColor: primary,
                child: Container(
                  color: hoverColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/bag.png"),
                      SizedBox(width: 16 ,),
                      defaultText(
                          text: "Payment",
                          size: 12,
                          fontWeight: FontWeight.w700,
                          color: bgDark,
                          letterSpacing: 1)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
