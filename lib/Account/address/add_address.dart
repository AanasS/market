import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({Key? key}) : super(key: key);

  @override
  _AddAddressState createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();

  String hintText = "United State";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
          title: "Add Address", isLeading: true, context: context),
      body: SafeArea(
          child: Container(
        padding: EdgeInsetsDirectional.all(16),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(width: 2, color: bgGrey.withOpacity(.2)))),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              defaultText(
                  text: "Country or region",
                  size: 14,
                  fontWeight: FontWeight.w700,
                  color: bgDark,
                  letterSpacing: 0),
              SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: primary),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration.collapsed(hintText: hintText),
                    isExpanded: true,
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: bgGrey,
                    ),
                    iconSize: 24,
                    items: <String>['United States', 'Egypt', 'Saudi']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (selected) {
                      setState(() {
                        hintText = selected!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
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
                  placeholder: "",
                  validate: (value) {
                    if (value!.isEmpty) {
                      return ("Please Fill The Form");
                    }
                  }),
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
                  validate: (value) {
                    if (value!.isEmpty) {
                      return ("Please Fill The Form");
                    }
                  },
                  controller: _lastNameController,
                  placeholder: ""),
              SizedBox(
                height: 24,
              ),
              defaultText(
                  text: "Street Address",
                  size: 14,
                  fontWeight: FontWeight.w700,
                  color: bgDark,
                  letterSpacing: 0),
              SizedBox(
                height: 12,
              ),
              defaultTextField(
                  controller: _lastNameController, placeholder: ""),
              SizedBox(
                height: 24,
              ),
              defaultText(
                  text: "Street Address 2 (Optional)",
                  size: 14,
                  fontWeight: FontWeight.w700,
                  color: bgDark,
                  letterSpacing: 0),
              SizedBox(
                height: 12,
              ),
              defaultTextField(
                  controller: _lastNameController, placeholder: ""),
              SizedBox(
                height: 24,
              ),
              defaultText(
                  text: "City",
                  size: 14,
                  fontWeight: FontWeight.w700,
                  color: bgDark,
                  letterSpacing: 0),
              SizedBox(
                height: 12,
              ),
              defaultTextField(
                  controller: _lastNameController, placeholder: ""),
              SizedBox(
                height: 24,
              ),
              defaultText(
                  text: "State/Province/Region",
                  size: 14,
                  fontWeight: FontWeight.w700,
                  color: bgDark,
                  letterSpacing: 0),
              SizedBox(
                height: 12,
              ),
              defaultTextField(
                  controller: _lastNameController, placeholder: ""),
              SizedBox(
                height: 24,
              ),
              defaultText(
                  text: "Zip Code",
                  size: 14,
                  fontWeight: FontWeight.w700,
                  color: bgDark,
                  letterSpacing: 0),
              SizedBox(
                height: 12,
              ),
              defaultTextField(
                  controller: _lastNameController, placeholder: ""),
              SizedBox(
                height: 24,
              ),
              defaultText(
                  text: "Phone Number",
                  size: 14,
                  fontWeight: FontWeight.w700,
                  color: bgDark,
                  letterSpacing: 0),
              SizedBox(
                height: 12,
              ),
              defaultTextField(
                  controller: _lastNameController, placeholder: ""),
              SizedBox(
                height: 24,
              ),
              defaultButton(onTap: () {}, text: "Add Address")
            ],
          ),
        ),
      )),
    );
  }
}
