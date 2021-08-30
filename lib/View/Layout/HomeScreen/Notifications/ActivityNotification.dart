import 'package:flutter/material.dart';
import 'package:market/Model/Products/offerModel.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';
class ActivityNotification extends StatefulWidget {
  @override
  _ActivityNotificationState createState() => _ActivityNotificationState();
}


class _ActivityNotificationState extends State<ActivityNotification> {
  List<String> title=[
    'Transaction Nike Air Zoom Product',
    'Transaction Nike Air Zoom Pegasus 36 Miami',
    'Transaction Nike Air Max'
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
            text: "Activity",
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
                leading: 'assets/icons/Transaction.png',
                title: title[index],
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
