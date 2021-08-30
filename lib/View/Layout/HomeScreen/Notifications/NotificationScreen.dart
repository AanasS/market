import 'package:flutter/material.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

import 'ActivityNotification.dart';
import 'FeedNotification.dart';
import 'OfferNotification.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
            text: "Notification",
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
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OfferNotification()));
              },
              leading: Icon(Icons.local_offer_outlined,color: primary,),
              title: defaultText(
                text: 'Offer',
                size: 12,
                fontWeight: FontWeight.w700,
                color: bgDark,
                letterSpacing: 0,
              ),
              trailing: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text('3',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white
                  ),),
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FeedNotification()));
              },
              leading: Icon(Icons.feedback_outlined,color: primary,),
              title: defaultText(
                text: 'Feed',
                size: 12,
                fontWeight: FontWeight.w700,
                color: bgDark,
                letterSpacing: 0,
              ),
              trailing: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text('3',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white
                  ),),
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ActivityNotification()));
              },
              leading: Icon(Icons.notifications_none_rounded,color: primary,),
              title: defaultText(
                text: 'Activity',
                size: 12,
                fontWeight: FontWeight.w700,
                color: bgDark,
                letterSpacing: 0,
              ),
              trailing: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text('3',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white
                  ),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
