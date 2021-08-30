import 'package:flutter/material.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';
class ShortBy extends StatefulWidget {
  @override
  _ShortByState createState() => _ShortByState();
}

class _ShortByState extends State<ShortBy> {
  List<String> shortBy=[
    'Best Match',
    'Time: ending soonest',
    'Price + Shipping: lowest first',
    'Price + Shipping: highest first',
    'Distance: nearest first'
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
            text: "Short By",
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
      body: ListView.builder(
        itemCount: shortBy.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            title: defaultText(
              text: shortBy[index],
              fontWeight: FontWeight.w700,
              size:12,
              color: bgDark,
              letterSpacing: 0.5
            ),
          );
        },
      ),
    );
  }
}
