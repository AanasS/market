import 'package:flutter/material.dart';
import 'package:market/Model/Products/offerModel.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';
class OfferNotification extends StatefulWidget {
  @override
  _OfferNotificationState createState() => _OfferNotificationState();
}


class _OfferNotificationState extends State<OfferNotification> {
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
            text: "Offer",
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
                  leading: 'assets/icons/offerIcon.png',
                  title: offers[index]['title'],
                  details: offers[index]['details'],
                  dateTime: offers[index]['date'],
              );
            },
          ),
        ),
      ),
    );
  }
}
