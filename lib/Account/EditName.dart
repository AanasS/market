import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class EditName extends StatefulWidget {
  const EditName({Key? key}) : super(key: key);

  @override
  _EditNameState createState() => _EditNameState();
}

class _EditNameState extends State<EditName> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "Name", isLeading: true,context: context),
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
                text: "First Name",
                size: 14,
                fontWeight: FontWeight.w700,
                color: bgDark,
                letterSpacing: 0),
            SizedBox(
              height: 12,
            ),
            defaultTextField(
                controller: _firstNameController,
                placeholder: "Ahmed"),
            SizedBox(
              height: 24,
            ),
            defaultText(
                text: "Last Name",
                size: 14,
                fontWeight: FontWeight.w700,
                color: bgDark,
                letterSpacing: 0),
            SizedBox(
              height: 12,
            ),
            defaultTextField(
                controller: _lastNameController,
                placeholder: "khalid"),
            Spacer(),
            defaultButton(onTap: () {}, text: "Save")
          ],
        ),
      )),
    );
  }
}
