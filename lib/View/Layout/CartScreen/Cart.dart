import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:market/Model/Products/productModel.dart';
import 'package:market/View/Layout/CartScreen/Shipto.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';
import 'package:market/View/Shared/Constant.dart';
import 'package:dotted_line/dotted_line.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  TextEditingController cuponController = TextEditingController();
  List<String> itemImgList = [
    'assets/images/products/nikeair.png',
    'assets/images/products/bag3.png',
    'assets/images/products/shoes3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(
              child: Container(
                color: light,
                height: 1.0,
              ),
              preferredSize: Size.fromHeight(4.0)),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: defaultText(
              text: "Your Cart",
              size: 16,
              fontWeight: FontWeight.w700,
              color: bgDark,
              letterSpacing: 1),
        ),
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return !items[index]['delete']
                          ? cartItems(
                              minusOnTap: () {
                                if (items[index]['quantity'] > 1) {
                                  setState(() {
                                    items[index]['quantity']--;
                                    print(items[index]['quantity'].toString());
                                  });
                                }
                              },
                              plusOnTap: () {
                                setState(() {
                                  items[index]['quantity']++;
                                  print(items[index]['quantity'].toString());
                                });
                              },
                              quantity: items[index]['quantity'].toString(),
                              itemImg: items[index]['photoUrl'],
                              itemName: items[index]['name'],
                              itemPrice: items[index]['price'],
                              favIconColor:
                                  items[index]['fav'] ? Colors.red : bgGrey,
                              favIcon: items[index]['fav']
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              favTab: () {
                                setState(() {
                                  items[index]['fav'] = !items[index]['fav'];
                                });
                              },
                              deleteTab: () {
                                setState(() {
                                  items[index]['delete'] =
                                      !items[index]['delete'];
                                  counter.remove(index);
                                  // getItemsCount();
                                  print('sssssssss: $counter');
                                });
                              })
                          : Container();
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      defaultTextField(
                        isBorderEnabled: true,
                        controller: cuponController,
                        placeholder: 'Enter Cupon Code',
                        width: 256,
                        radBottomRight: 0,
                        radTopRight: 0,
                      ),
                      defaultButton(
                          onTap: () {},
                          text: 'Apply',
                          width: 72,
                          height: 56,
                          radTopLeft: 0,
                          radBottomLeft: 0)
                    ],
                  ),
                  SizedBox(height: 8.0,),
                  Container(
                    width: 343,
                    height: 150,
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      border: Border.all(color: bgGrey),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              defaultText(
                                  text: 'Items (${counter.length})',
                                  size: 12,
                                  fontWeight: FontWeight.normal,
                                  color: bgGrey,
                                  letterSpacing: 0,
                              ),
                              defaultText(
                                text: '\$598,86',
                                size: 12,
                                fontWeight: FontWeight.normal,
                                color: bgDark,
                                letterSpacing: 0,
                              )
                            ],
                          ),
                          SizedBox(height:10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              defaultText(
                                  text: 'Shipping',
                                  size: 12,
                                  fontWeight: FontWeight.normal,
                                  color: bgGrey,
                                  letterSpacing: 0,
                              ),
                              defaultText(
                                text: '\$598,86',
                                size: 12,
                                fontWeight: FontWeight.normal,
                                color: bgDark,
                                letterSpacing: 0,
                              )
                            ],
                          ),
                          SizedBox(height:10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              defaultText(
                                  text: 'Import Charges',
                                  size: 12,
                                  fontWeight: FontWeight.normal,
                                  color: bgGrey,
                                  letterSpacing: 0,
                              ),
                              defaultText(
                                text: '\$128',
                                size: 12,
                                fontWeight: FontWeight.normal,
                                color: bgDark,
                                letterSpacing: 0,
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          DottedLine(
                            direction: Axis.horizontal,
                            lineLength: double.infinity,
                            lineThickness: 1.0,
                            dashLength: 4.0,
                            dashColor: light,
                            dashRadius: 0.0,
                            dashGapLength: 4.0,
                            dashGapColor: Colors.transparent,
                            dashGapRadius: 0.0,
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              defaultText(
                                text: 'Total Price',
                                size: 12,
                                fontWeight: FontWeight.bold,
                                color: bgDark,
                                letterSpacing: 0,
                              ),
                              defaultText(
                                text: '\$128',
                                size: 12,
                                fontWeight: FontWeight.bold,
                                color: primary,
                                letterSpacing: 0,
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height:10,),
                  defaultButton(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (contex)=>ShipTo()));
                    },
                    text: 'Check Out',
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
