import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      defaultAppBar(title: "5 Review", context: context, isLeading: true),
      body: Container(
        padding: EdgeInsetsDirectional.only(start: 16, end: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(.10),
                        borderRadius: BorderRadius.circular(5)),
                    padding: EdgeInsetsDirectional.all(16),
                    child: defaultText(
                        text: "All  Reviews",
                        size: 12,
                        fontWeight: FontWeight.w700,
                        color: primary,
                        letterSpacing: 1),
                  ),
                  Expanded(
                      child: Container(
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border:
                                      Border.all(color: primary.withOpacity(.2))),
                                  padding: EdgeInsetsDirectional.all(16),
                                  margin: EdgeInsets.symmetric(horizontal: 12),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: bgYellow,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      defaultText(
                                          text: "1",
                                          size: 12,
                                          fontWeight: FontWeight.w400,
                                          color: bgGrey,
                                          letterSpacing: 1),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border:
                                      Border.all(color: primary.withOpacity(.2))),
                                  padding: EdgeInsetsDirectional.all(16),
                                  margin: EdgeInsets.symmetric(horizontal: 12),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: bgYellow,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      defaultText(
                                          text: "2",
                                          size: 12,
                                          fontWeight: FontWeight.w400,
                                          color: bgGrey,
                                          letterSpacing: 1),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border:
                                      Border.all(color: primary.withOpacity(.2))),
                                  padding: EdgeInsetsDirectional.all(16),
                                  margin: EdgeInsets.symmetric(horizontal: 12),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: bgYellow,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      defaultText(
                                          text: "3",
                                          size: 12,
                                          fontWeight: FontWeight.w400,
                                          color: bgGrey,
                                          letterSpacing: 1),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border:
                                      Border.all(color: primary.withOpacity(.2))),
                                  padding: EdgeInsetsDirectional.all(16),
                                  margin: EdgeInsets.symmetric(horizontal: 12),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: bgYellow,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      defaultText(
                                          text: "4",
                                          size: 12,
                                          fontWeight: FontWeight.w400,
                                          color: bgGrey,
                                          letterSpacing: 1),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border:
                                      Border.all(color: primary.withOpacity(.2))),
                                  padding: EdgeInsetsDirectional.all(16),
                                  margin: EdgeInsets.symmetric(horizontal: 12),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: bgYellow,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      defaultText(
                                          text: "5",
                                          size: 12,
                                          fontWeight: FontWeight.w400,
                                          color: bgGrey,
                                          letterSpacing: 1),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )))
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(
                                  "https://miro.medium.com/max/2048/0*0fClPmIScV5pTLoE.jpg"),
                              backgroundColor: Colors.transparent,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                defaultText(
                                    text: "James Lawson",
                                    size: 14,
                                    fontWeight: FontWeight.w700,
                                    color: bgDark,
                                    letterSpacing: 1),
                                RatingBarIndicator(
                                  rating: 5,
                                  itemBuilder: (context, index) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  itemCount: 5,
                                  itemSize: 25,
                                  direction: Axis.horizontal,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: defaultText(
                            text:
                            "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
                            size: 12,
                            fontWeight: FontWeight.normal,
                            color: bgGrey,
                            letterSpacing: 0),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 100,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) =>
                              Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Image.asset(
                                      "assets/images/products/bag.png")),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        child: defaultText(
                            text: "December 10, 2016",
                            size: 12,
                            fontWeight: FontWeight.normal,
                            color: bgGrey,
                            letterSpacing: 0),
                      ),
                    ],
                  );
                },
                itemCount: 10,
                physics: BouncingScrollPhysics(),
              ),
            ),
            defaultButton(onTap: () {}, text: "Write Review"),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
