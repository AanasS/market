import 'package:flutter/material.dart';
import 'package:market/View/Layout/CartScreen/ChooseCard.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';
class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
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
            text: "Payment",
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
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.credit_card_outlined,color: primary,),
            title: defaultText(
                text: 'Credit Card Or Debit',
                size: 12,
                fontWeight: FontWeight.w700,
                color: bgDark,
                letterSpacing: 0,
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChooseCard()));
            },

          ),
          ListTile(
            leading: Image.asset('assets/icons/Icon-Paypal.png'),
            title: defaultText(
                text: 'Paypal',
                size: 12,
                fontWeight: FontWeight.w700,
                color: bgDark,
                letterSpacing: 0,
            ),
          ),
          ListTile(
            leading: Image.asset('assets/icons/icon-Bank.png'),
            title: defaultText(
                text: 'Bank Transfer',
                size: 12,
                fontWeight: FontWeight.w700,
                color: bgDark,
                letterSpacing: 0,
            ),
          ),

        ],
      ),
    );
  }
}
