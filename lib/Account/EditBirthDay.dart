
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart';

import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class EditBirthDay extends StatefulWidget {
  const EditBirthDay({Key? key}) : super(key: key);

  @override
  _EditBirthDayState createState() => _EditBirthDayState();
}

class _EditBirthDayState extends State<EditBirthDay> {
  TextEditingController _dateController = TextEditingController();
  String dateText = "12/12/1994";
  DateTime? selectedDate;
  bool isCalendarVisible = false;


  Color timeColor = primary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "Gender", isLeading: true,context: context),
      body: SafeArea(
          child: Container(
        padding: EdgeInsetsDirectional.all(16),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(width: 2, color: bgGrey.withOpacity(.2)))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            defaultText(
                text: "Choose Date",
                size: 14,
                fontWeight: FontWeight.w700,
                color: bgDark,
                letterSpacing: 0),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: primary)),
              child: Row(
                children: [
                  defaultText(
                      text: dateText,
                      size: 12,
                      fontWeight: FontWeight.w700,
                      color: bgGrey,
                      letterSpacing: 0),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          isCalendarVisible = !isCalendarVisible;
                        });
                      },
                      padding: EdgeInsets.all(0),
                      color: isCalendarVisible? primary: bgGrey,
                      icon: ImageIcon(AssetImage("assets/icons/Date.png")))
                ],
              ),
            ),
            Visibility(
              visible: isCalendarVisible,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: CalendarCarousel<Event>(
                  onDayPressed: (DateTime date, List<Event> events) async {
                    selectedDate = date;
                    setState(() {
                      dateText = DateFormat("d/M/y").format(date).toString();
                    });
                  },
                  weekendTextStyle: TextStyle(
                    color: primary,
                  ),
                  weekFormat: false,
                  height: MediaQuery.of(context).size.height * 0.485,
                  selectedDayButtonColor: primary,
                  selectedDayBorderColor: primary,
                  selectedDateTime: selectedDate,
                  // todayButtonColor: customBlueColor,
                  todayButtonColor: Colors.transparent,
                  todayTextStyle: TextStyle(color: Colors.black),
                  todayBorderColor: primary,
                  daysHaveCircularBorder: true,
                  weekdayTextStyle: TextStyle(color: primary),
                ),
              ),
            ),
            Spacer(),
            defaultButton(onTap: () {

            }, text: "Save")
          ],
        ),
      )),
    );
  }
}
