import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class EditPassword extends StatefulWidget {
  const EditPassword({Key? key}) : super(key: key);

  @override
  _EditPasswordState createState() => _EditPasswordState();
}

class _EditPasswordState extends State<EditPassword> {
  TextEditingController _oldPassword = TextEditingController();
  TextEditingController _newPassword = TextEditingController();
  TextEditingController _newConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
          title: "Change Password", isLeading: true, context: context),
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
                text: "Old Password",
                size: 14,
                fontWeight: FontWeight.w700,
                color: bgDark,
                letterSpacing: 0),
            SizedBox(
              height: 12,
            ),
            defaultTextField(
                prefixIcon: Icons.lock_outlined,
                isSecure: true,
                controller: _oldPassword,
                placeholder: "********"),
            SizedBox(
              height: 24,
            ),
            defaultText(
                text: "New Password",
                size: 14,
                fontWeight: FontWeight.w700,
                color: bgDark,
                letterSpacing: 0),
            SizedBox(
              height: 12,
            ),
            defaultTextField(
                prefixIcon: Icons.lock_outlined,
                isSecure: true,
                controller: _newPassword,
                placeholder: "**********"),
            SizedBox(
              height: 24,
            ),
            defaultText(
                text: "New Password Again",
                size: 14,
                fontWeight: FontWeight.w700,
                color: bgDark,
                letterSpacing: 0),
            SizedBox(
              height: 12,
            ),
            defaultTextField(
                prefixIcon: Icons.lock_outlined,
                isSecure: true,
                controller: _newConfirmPassword,
                placeholder: "**********"),
            Spacer(),
            defaultButton(onTap: () {}, text: "Save")
          ],
        ),
      )),
    );
  }
}
