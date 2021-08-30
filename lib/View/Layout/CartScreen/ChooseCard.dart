import 'package:flutter/material.dart';
import 'package:market/View/Layout/Carousel.dart';
import 'package:market/View/Layout/CartScreen/SuccessScreen.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';
class ChooseCard extends StatefulWidget {
  @override
  _ChooseCardState createState() => _ChooseCardState();
}

class _ChooseCardState extends State<ChooseCard> {
  List<String> credit=[
    'assets/images/Credit Card.png',
    'assets/images/Credit Card.png',
    'assets/images/Credit Card.png',
    'assets/images/Credit Card.png',
    'assets/images/Credit Card.png',
  ];
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
            text: "Choose Card",
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Icon(Icons.add,color:primary),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Carousel(credit),
            defaultButton(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessScreen()));
                },
                text: 'Pay \$766.86')
          ],
        ),
      ),
    );
  }
}
