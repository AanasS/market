import 'package:flutter/material.dart';
import 'package:market/Model/Products/offerModel.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';
class FeedNotification extends StatefulWidget {
  @override
  _FeedNotificationState createState() => _FeedNotificationState();
}


class _FeedNotificationState extends State<FeedNotification> {
  List<String> imgs=[
    'assets/images/products/shoes.png',
    'assets/images/products/shoes2.png',
    'assets/images/products/shoes3.png'
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
            text: "Feed",
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
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: offers.length,
            itemBuilder: (BuildContext context,int index){
              return notificationItem(
                leading: imgs[index],
                title: 'New Product',
                details: 'Nike Air Zoom Pegasus 36 Miami - Special For your Activity',
                dateTime: 'June 3, 2015 5:06 PM',
              );
            },
          ),
        ),
      ),
    );
  }
}
