import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class EditGender extends StatefulWidget {
  const EditGender({Key? key}) : super(key: key);

  @override
  _EditGenderState createState() => _EditGenderState();
}

class _EditGenderState extends State<EditGender> {
  String hintText = "Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "Gender", isLeading: true ,context: context),
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
                text: "Choose Gender",
                size: 14,
                fontWeight: FontWeight.w700,
                color: bgDark,
                letterSpacing: 0),
            SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                  color: primary
                ),
                borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 13,horizontal: 10),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration.collapsed(hintText: hintText),
                  isExpanded: true,
                  icon: Icon(Icons.keyboard_arrow_down,color: bgGrey,),
                  iconSize: 24,
                  items:
                      <String>['Male', 'Female', 'أعوذ بالله'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (selected) {
                   setState(() {
                     hintText = selected! ;
                   });
                  },
                ),
              ),
            ),
            Spacer(),
            defaultButton(onTap: () {}, text: "Save")
          ],
        ),
      )),
    );
  }
}
