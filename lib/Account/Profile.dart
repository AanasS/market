import 'package:flutter/material.dart';
import 'package:market/Account/ChangeEmail.dart';
import 'package:market/Account/ChangePhone.dart';
import 'package:market/Account/EditBirthDay.dart';
import 'package:market/Account/EditGender.dart';
import 'package:market/Account/EditName.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          defaultAppBar(title: "Profile", isLeading: true, context: context),
      body: SafeArea(
        child: Container(
          padding: EdgeInsetsDirectional.all(16),
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(width: 2, color: bgGrey.withOpacity(.2)))),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 32),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/images/profile.jpg"))),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => EditName()));
                          },
                          child: defaultText(
                              text: "Ahmed Khalid",
                              size: 14,
                              fontWeight: FontWeight.w700,
                              color: bgDark,
                              letterSpacing: 0),
                        ),
                        defaultText(
                            text: "@khalid",
                            size: 12,
                            fontWeight: FontWeight.w400,
                            color: bgGrey,
                            letterSpacing: 0),
                      ],
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EditGender()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/Gender.png"),
                      SizedBox(
                        width: 16,
                      ),
                      defaultText(
                          text: "Gender",
                          size: 12,
                          fontWeight: FontWeight.w700,
                          color: bgDark,
                          letterSpacing: 1),
                      Spacer(),
                      defaultText(
                          text: "male",
                          size: 12,
                          fontWeight: FontWeight.w400,
                          color: bgDark.withOpacity(.3),
                          letterSpacing: 1),
                      IconButton(
                        onPressed: () {},
                        iconSize: 30,
                        color: bgGrey,
                        icon: Icon(Icons.chevron_right),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EditBirthDay()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/Date.png"),
                      SizedBox(
                        width: 16,
                      ),
                      defaultText(
                          text: "Birthday",
                          size: 12,
                          fontWeight: FontWeight.w700,
                          color: bgDark,
                          letterSpacing: 1),
                      Spacer(),
                      defaultText(
                          text: "12-12-2000",
                          size: 12,
                          fontWeight: FontWeight.w400,
                          color: bgDark.withOpacity(.3),
                          letterSpacing: 1),
                      IconButton(
                        onPressed: () {},
                        iconSize: 30,
                        color: bgGrey,
                        icon: Icon(Icons.chevron_right),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChangeEmail()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/messageblue.png"),
                      SizedBox(
                        width: 16,
                      ),
                      defaultText(
                          text: "Email",
                          size: 12,
                          fontWeight: FontWeight.w700,
                          color: bgDark,
                          letterSpacing: 1),
                      Spacer(),
                      defaultText(
                          text: "Derlaxy@yahoo.com",
                          size: 12,
                          fontWeight: FontWeight.w400,
                          color: bgDark.withOpacity(.3),
                          letterSpacing: 1),
                      IconButton(
                        onPressed: () {},
                        iconSize: 30,
                        color: bgGrey,
                        icon: Icon(Icons.chevron_right),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChangePhone()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/Phone.png"),
                      SizedBox(
                        width: 16,
                      ),
                      defaultText(
                          text: "Phone",
                          size: 12,
                          fontWeight: FontWeight.w700,
                          color: bgDark,
                          letterSpacing: 1),
                      Spacer(),
                      defaultText(
                          text: "(307) 555-0133",
                          size: 12,
                          fontWeight: FontWeight.w400,
                          color: bgDark.withOpacity(.3),
                          letterSpacing: 1),
                      IconButton(
                        onPressed: () {},
                        iconSize: 30,
                        color: bgGrey,
                        icon: Icon(Icons.chevron_right),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                // onTap: (){
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => ChangeEmail()));
                // },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Image.asset("assets/icons/lock.png"),
                      SizedBox(
                        width: 16,
                      ),
                      defaultText(
                          text: "Change Password",
                          size: 12,
                          fontWeight: FontWeight.w700,
                          color: bgDark,
                          letterSpacing: 1),
                      Spacer(),
                      defaultText(
                          text: "***********",
                          size: 12,
                          fontWeight: FontWeight.w400,
                          color: bgDark.withOpacity(.3),
                          letterSpacing: 1),
                      IconButton(
                        onPressed: () {},
                        iconSize: 30,
                        color: bgGrey,
                        icon: Icon(Icons.chevron_right),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
