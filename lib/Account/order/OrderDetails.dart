import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';
import 'package:steps_indicator/steps_indicator.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      appBar: defaultAppBar(
          title: "Order Details", isLeading: true, context: context),
      body: SafeArea(
          child: Container(
        padding: EdgeInsetsDirectional.all(16),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(width: 2, color: primary.withOpacity(.15)))),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    // width: MediaQuery.of(context).size.width,
                    child: StepsIndicator(
                      doneLineThickness: 2,
                      undoneLineThickness: 2,
                      lineLength: MediaQuery.of(context).size.width*0.12,
                      doneLineColor: primary,
                      undoneLineColor: primary.withOpacity(.25),
                      doneStepWidget: CircleAvatar(
                        radius: 20,
                        backgroundColor: primary,
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                        ),
                      ),
                      nbSteps: 4,
                      selectedStep: 2,
                      selectedStepWidget: CircleAvatar(
                        radius: 20,
                        backgroundColor: primary,
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                        ),
                      ),
                      unselectedStepWidget: CircleAvatar(
                        radius: 20,
                        backgroundColor: primary.withOpacity(.25),
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      defaultText(
                          text: "Packing",
                          size: 12,
                          fontWeight: FontWeight.w400,
                          color: bgGrey,
                          letterSpacing: 1),
                      defaultText(
                          text: "Shipping",
                          size: 12,
                          fontWeight: FontWeight.w400,
                          color: bgGrey,
                          letterSpacing: 1),
                      defaultText(
                          text: "Arriving",
                          size: 12,
                          fontWeight: FontWeight.w400,
                          color: bgGrey,
                          letterSpacing: 1),
                      defaultText(
                          text: "Success",
                          size: 12,
                          fontWeight: FontWeight.w400,
                          color: bgGrey,
                          letterSpacing: 1),
                    ],
                  )
                ],
              ),

              SizedBox(
                height: 24,
              ),

              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return cartItems(
                    isCartItem: false,
                    itemImg: "assets/images/products/bag3.png",
                    itemName: "Nike Air Zoom Pegasus 36 Miami",
                    itemPrice: "299.5",
                    favIconColor: Colors.red,
                    favIcon: Icons.favorite,
                    favTab: () {
                      setState(() {});
                    },
                  );
                },
              ),
              defaultText(
                  text: "Shipping Details",
                  size: 14,
                  fontWeight: FontWeight.w700,
                  color: bgDark,
                  letterSpacing: 0),
              SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: bgGrey.withOpacity(.4))),
                padding: EdgeInsetsDirectional.all(16),
                margin: EdgeInsets.only(bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: defaultText(
                                text: "Date Shipping",
                                size: 12,
                                fontWeight: FontWeight.w400,
                                color: bgGrey,
                                letterSpacing: 0),
                          ),
                          defaultText(
                              text: "January 16, 2015",
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
                        children: [
                          Expanded(
                            child: defaultText(
                                text: "Shipping",
                                size: 12,
                                fontWeight: FontWeight.w400,
                                color: bgGrey,
                                letterSpacing: 0),
                          ),
                          defaultText(
                              text: "POS Reggular",
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
                        children: [
                          Expanded(
                            child: defaultText(
                                text: "No. Resi",
                                size: 12,
                                fontWeight: FontWeight.w400,
                                color: bgGrey,
                                letterSpacing: 0),
                          ),
                          defaultText(
                              text: "000192848573",
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
                        children: [
                          defaultText(
                              text: "Address",
                              size: 12,
                              fontWeight: FontWeight.w400,
                              color: bgGrey,
                              letterSpacing: 0),
                          Spacer(),
                          Expanded(
                            child: defaultText(
                                text:
                                    "2727 Lakeshore Rd undefined Nampa, Tennessee 78410",
                                size: 12,
                                fontWeight: FontWeight.w400,
                                color: bgDark,
                                letterSpacing: 0),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Payment Details
              defaultText(
                  text: "Payment Details",
                  size: 14,
                  fontWeight: FontWeight.w700,
                  color: bgDark,
                  letterSpacing: 0),
              SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: bgGrey.withOpacity(.4))),
                padding: EdgeInsetsDirectional.all(16),
                margin: EdgeInsets.only(bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          defaultText(
                              text: "Items (3)",
                              size: 12,
                              fontWeight: FontWeight.w400,
                              color: bgGrey,
                              letterSpacing: 0),
                          defaultText(
                              text: "\$598.86",
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
                              text: "Shipping",
                              size: 12,
                              fontWeight: FontWeight.w400,
                              color: bgGrey,
                              letterSpacing: 0),
                          defaultText(
                              text: "\$40.00",
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
                              text: "Import charges",
                              size: 12,
                              fontWeight: FontWeight.w400,
                              color: bgGrey,
                              letterSpacing: 0),
                          defaultText(
                              text: "\$128.00",
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          defaultText(
                              text: "Total Price",
                              size: 14,
                              fontWeight: FontWeight.w700,
                              color: bgDark,
                              letterSpacing: 0),
                          defaultText(
                              text: "\$766.86",
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

              defaultButton(onTap: () {}, text: "Notify Me")
            ],
          ),
        ),
      )),
    );
  }
}
