import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/Account/order/OrderDetails.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      appBar: defaultAppBar(title: "Order", isLeading: true, context: context),
      body: SafeArea(
          child: Container(
        padding: EdgeInsetsDirectional.all(16),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(width: 2, color: bgGrey.withOpacity(.2)))),
        child: ListView.builder(
          itemBuilder: (context, index) =>
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderDetails()));
                },
                child: Container(
            decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: bgGrey.withOpacity(.4))),
            padding: EdgeInsetsDirectional.all(16),
            margin: EdgeInsetsDirectional.only(bottom: 16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  defaultText(
                      text: "LQNSU346JK",
                      size: 14,
                      fontWeight: FontWeight.w700,
                      color: bgDark,
                      letterSpacing: 0),
                  SizedBox(
                    height: 12,
                  ),
                  defaultText(
                      text: "Order at Lafyuu : August 1, 2017",
                      size: 12,
                      fontWeight: FontWeight.w400,
                      color: bgGrey,
                      letterSpacing: 0),
                  SizedBox(
                    height: 12,
                  ),
                  DottedLine(
                    direction: Axis.horizontal,
                    lineLength: double.infinity,
                    lineThickness: 1.0,
                    dashLength: 6.0,
                    dashColor: bgGrey.withOpacity(.5),
                    dashGapLength: 5.0,
                    dashGapColor: Colors.transparent,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        defaultText(
                            text: "Order Status",
                            size: 12,
                            fontWeight: FontWeight.w400,
                            color: bgGrey,
                            letterSpacing: 0),
                        defaultText(
                            text: "Shipping",
                            size: 12,
                            fontWeight: FontWeight.w400,
                            color: bgDark,
                            letterSpacing: 0),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        defaultText(
                            text: "Items",
                            size: 12,
                            fontWeight: FontWeight.w400,
                            color: bgGrey,
                            letterSpacing: 0),
                        defaultText(
                            text: "2 Items purchased",
                            size: 12,
                            fontWeight: FontWeight.w400,
                            color: bgDark,
                            letterSpacing: 0),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        defaultText(
                            text: "Price",
                            size: 12,
                            fontWeight: FontWeight.w400,
                            color: bgGrey,
                            letterSpacing: 0),
                        defaultText(
                            text: "\$299,43",
                            size: 12,
                            fontWeight: FontWeight.w700,
                            color: primary,
                            letterSpacing: 0),
                      ],
                    ),
                  ),
                ],
            ),
          ),
              ),
          itemCount: 5,
        ),
      )),
    );
  }
}
