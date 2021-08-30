
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class ChangePhone extends StatefulWidget {
  const ChangePhone({Key? key}) : super(key: key);

  @override
  _ChangePhoneState createState() => _ChangePhoneState();
}

class _ChangePhoneState extends State<ChangePhone> {

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      appBar: defaultAppBar(title: "Phone", isLeading: true,context: context),
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
                    text: "Change Phone",
                    size: 14,
                    fontWeight: FontWeight.w700,
                    color: bgDark,
                    letterSpacing: 0),
                SizedBox(
                  height: 12,
                ),
                defaultTextField(
                  type: TextInputType.number,
                    prefixIcon: Icons.phone_iphone_outlined,
                    controller: emailController,
                    placeholder: "(307) 555-0133"),

                Spacer(),
                defaultButton(onTap: () {}, text: "Save")
              ],
            ),
          )),
    );
  }
}
