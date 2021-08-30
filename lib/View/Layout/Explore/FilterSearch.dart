import 'package:flutter/material.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class FilterSearch extends StatefulWidget {
  @override
  _FilterSearchState createState() => _FilterSearchState();
}

class _FilterSearchState extends State<FilterSearch> {
  SfRangeValues _values = SfRangeValues(4.0, 8.0);
  TextEditingController _minPrice = TextEditingController();
  TextEditingController _maxPrice = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              text: "Filter Search",
              size: 16,
              fontWeight: FontWeight.w700,
              color: bgDark,
              letterSpacing: 1),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.clear,
              color: bgGrey,
              size: 18,
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 343,
                    height: 143,

                    // color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        defaultText(
                          text: 'Price Range',
                          size: 14,
                          fontWeight: FontWeight.w700,
                          color: bgDark,
                          letterSpacing: 0.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            defaultTextField(
                              width: 155,
                              controller: _minPrice,
                              placeholder: '\$1.225',
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            defaultTextField(
                                width: 155,
                                controller: _maxPrice,
                                placeholder: '\$9.000')
                          ],
                        ),
                        SfRangeSlider(
                          activeColor: primary,
                          // stepSize: 0.001,
                          min: 0.0,
                          max: 10.0,
                          values: _values,
                          // interval: 20,
                          enableTooltip: true,
                          minorTicksPerInterval: 1,
                          onChanged: (dynamic value) {
                            setState(() {
                              _values = value;
                            });
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            defaultText(
                              text: 'Min',
                              size: 12,
                              fontWeight: FontWeight.w700,
                              color: bgGrey,
                              letterSpacing: 0.5,
                            ),
                            defaultText(
                              text: 'Max',
                              size: 12,
                              fontWeight: FontWeight.w700,
                              color: bgGrey,
                              letterSpacing: 0.5,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    height: 83,
                    width: 261,
                    // color: Colors.green,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        defaultText(
                          text: 'Condition',
                          color: bgDark,
                          fontWeight: FontWeight.w700,
                          size: 14,
                          letterSpacing: 0.5,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            filterContainer(
                                width: 59,
                                text: 'New',
                                fontWeight: FontWeight.w400,
                                color: bgGrey,
                                borderColor: Colors.black.withOpacity(.3)),
                            filterContainer(
                                width: 65,
                                text: 'Used',
                                fontWeight: FontWeight.w700,
                                color: primary,
                                borderColor: primary),
                            filterContainer(
                                width: 120,
                                text: 'Not Specified',
                                fontWeight: FontWeight.w700,
                                color: primary,
                                borderColor: primary),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    height: 141,
                    width: 325,
                    // color: Colors.orange,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        defaultText(
                          text: 'Buying Format',
                          color: bgDark,
                          fontWeight: FontWeight.w700,
                          size: 14,
                          letterSpacing: 0.5,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            filterContainer(
                                width: 99,
                                text: 'All Listings',
                                fontWeight: FontWeight.w400,
                                color: bgGrey,
                                borderColor: Colors.black.withOpacity(.3)),
                            filterContainer(
                                width: 129,
                                text: 'Accepts Offers',
                                fontWeight: FontWeight.w700,
                                color: primary,
                                borderColor: primary),
                            filterContainer(
                                width: 81,
                                text: 'Auction',
                                fontWeight: FontWeight.w400,
                                color: bgGrey,
                                borderColor: Colors.black.withOpacity(.3)),
                          ],
                        ),
                        SizedBox(height:8),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            filterContainer(
                                width: 98,
                                text: 'Buy It Now',
                                fontWeight: FontWeight.w400,
                                color: bgGrey,
                                borderColor: Colors.black.withOpacity(.3)),
                            SizedBox(width: 8,),
                            filterContainer(
                                width: 123,
                                text: 'Classified Ads',
                                fontWeight: FontWeight.w400,
                                color: bgGrey,
                                borderColor: Colors.black.withOpacity(.3)),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    height: 141,
                    width: 303,
                    // color: Colors.orange,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        defaultText(
                          text: 'Item Location',
                          color: bgDark,
                          fontWeight: FontWeight.w700,
                          size: 14,
                          letterSpacing: 0.5,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            filterContainer(
                                width: 81,
                                text: 'Us Only',
                                fontWeight: FontWeight.w400,
                                color: bgGrey,
                                borderColor: Colors.black.withOpacity(.3)),
                            filterContainer(
                                width: 129,
                                text: 'North America',
                                fontWeight: FontWeight.w700,
                                color: primary,
                                borderColor: primary),
                            filterContainer(
                                width: 77,
                                text: 'Europe',
                                fontWeight: FontWeight.w400,
                                color: bgGrey,
                                borderColor: Colors.black.withOpacity(.3)),
                          ],
                        ),
                        SizedBox(height:8),
                        filterContainer(
                            width: 59,
                            text: 'Asia',
                            fontWeight: FontWeight.w400,
                            color: bgGrey,
                            borderColor: Colors.black.withOpacity(.3)),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    height: 373,
                    width: 314,
                    // color: Colors.orange,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        defaultText(
                          text: 'Show Only',
                          color: bgDark,
                          fontWeight: FontWeight.w700,
                          size: 14,
                          letterSpacing: 0.5,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            filterContainer(
                                width: 112,
                                text: 'Free Returns',
                                fontWeight: FontWeight.w400,
                                color: bgGrey,
                                borderColor: Colors.black.withOpacity(.3)),
                            SizedBox(width: 8,),
                            filterContainer(
                                width: 150,
                                text: 'Returns Accepted',
                                fontWeight: FontWeight.w700,
                                color: primary,
                                borderColor: primary),
                          ],
                        ),
                        SizedBox(height:8),
                        Row(
                          children: [
                            filterContainer(
                                width: 140,
                                text: 'Authorized Seller',
                                fontWeight: FontWeight.w400,
                                color: bgGrey,
                                borderColor: Colors.black.withOpacity(.3)),
                            SizedBox(width: 8,),
                            filterContainer(
                                width: 144,
                                text: 'Completed Items',
                                fontWeight: FontWeight.w400,
                                color: bgGrey,
                                borderColor: Colors.black.withOpacity(.3)),
                          ],
                        ),
                        SizedBox(height:8),
                        Row(
                          children: [
                            filterContainer(
                                width: 101,
                                text: 'Sold Items',
                                fontWeight: FontWeight.w700,
                                color: primary,
                                borderColor: primary),
                            SizedBox(width: 8,),
                            filterContainer(
                                width: 135,
                                text: 'Deals & Savings',
                                fontWeight: FontWeight.w400,
                                color: bgGrey,
                                borderColor: Colors.black.withOpacity(.3)),
                          ],
                        ),
                        SizedBox(height:8),
                        Row(
                          children: [
                            filterContainer(
                                width: 99,
                                text: 'Sale Items',
                                fontWeight: FontWeight.w400,
                                color: bgGrey,
                                borderColor: Colors.black.withOpacity(.3)),
                            SizedBox(width: 8,),
                            filterContainer(
                                width: 118,
                                text: 'Listed as Lots',
                                fontWeight: FontWeight.w400,
                                color: bgGrey,
                                borderColor: Colors.black.withOpacity(.3)),
                          ],
                        ),
                        SizedBox(height:8),
                        Row(
                          children: [
                            filterContainer(
                                width: 174,
                                text: 'Search in Description',
                                fontWeight: FontWeight.w700,
                                color: primary,
                                borderColor: primary),
                            SizedBox(width: 8,),
                            filterContainer(
                                width: 132,
                                text: 'Benefits charity',
                                fontWeight: FontWeight.w400,
                                color: bgGrey,
                                borderColor: Colors.black.withOpacity(.3)),
                          ],
                        ),
                        SizedBox(height:8),
                        filterContainer(
                            width: 163,
                            text: 'Authenticity Verified',
                            fontWeight: FontWeight.w400,
                            color: bgGrey,
                            borderColor: Colors.black.withOpacity(.3)),

                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  defaultButton(
                      onTap: (){},
                      text: 'Apply'),
                ],
              ),
            ),
          ),
        ));
  }
}
