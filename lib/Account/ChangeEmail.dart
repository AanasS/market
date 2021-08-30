import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class ChangeEmail extends StatefulWidget {
  const ChangeEmail({Key? key}) : super(key: key);

  @override
  _ChangeEmailState createState() => _ChangeEmailState();
}

class _ChangeEmailState extends State<ChangeEmail> {

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      appBar: defaultAppBar(title: "Email", isLeading: true,context: context),
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
                    text: "Change Email",
                    size: 14,
                    fontWeight: FontWeight.w700,
                    color: bgDark,
                    letterSpacing: 0),
                SizedBox(
                  height: 12,
                ),
                defaultTextField(
                    prefixIcon: Icons.email_outlined,
                    controller: emailController,
                    placeholder: "eng.kalid@gmail.com"),
                defaultText(text: "We Will Send verification to your New Email",
                    size: 12,
                    fontWeight: FontWeight.w400,
                    color: primary,
                    letterSpacing: 0),
                Spacer(),
                defaultButton(onTap: () {}, text: "Save")
              ],
            ),
          )),
    );
  }
}
