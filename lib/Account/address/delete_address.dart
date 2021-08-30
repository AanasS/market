import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class DeleteAddress extends StatefulWidget {
  const DeleteAddress({Key? key}) : super(key: key);

  @override
  _DeleteAddressState createState() => _DeleteAddressState();
}

class _DeleteAddressState extends State<DeleteAddress> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();

  String hintText = "United State";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
          title: "Edit Address", isLeading: true, context: context),
      body: SafeArea(
          child: Container(
        padding: EdgeInsetsDirectional.all(16),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(width: 2, color: bgGrey.withOpacity(.2)))),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 72,
                width: 72,
                decoration: BoxDecoration(
                    color: bgRed,
                    image: DecorationImage(
                        image: AssetImage("assets/icons/warn.png")),
                    border: Border.all(color: Colors.grey.withOpacity(.3)),
                    shape: BoxShape.circle),
              ),
              SizedBox(
                height: 12,
              ),
              defaultText(
                  text: "Confirmation",
                  size: 24,
                  fontWeight: FontWeight.w700,
                  color: bgDark,
                  letterSpacing: 0),
              SizedBox(
                height: 16,
              ),
              defaultText(
                  text: "Are you sure wanna delete address",
                  size: 12,
                  fontWeight: FontWeight.w400,
                  color: bgGrey,
                  letterSpacing: 0),
              SizedBox(
                height: 16,
              ),
              defaultButton(onTap: () {}, text: "Delete"),
              SizedBox(
                height: 16,
              ),
              defaultButton(
                  onTap: () {},
                  text: "Cancel",
                  color: Colors.transparent,
                  borderColor: bgGrey,
                  textColor: bgGrey),
            ],
          ),
        ),
      )),
    );
  }
}
