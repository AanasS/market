import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class WriteReview extends StatelessWidget {
  const WriteReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController reviewController = TextEditingController();
    return Scaffold(
      appBar: defaultAppBar(
          title: "Write Review", context: context, isLeading: true),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Container(
            padding: EdgeInsetsDirectional.all(16),
            decoration: BoxDecoration(
                border: Border(
                    top:
                        BorderSide(width: 2, color: primary.withOpacity(.15)))),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  defaultText(
                      text:
                          "Please write Overall level of satisfaction with your shipping / Delivery Service",
                      size: 14,
                      fontWeight: FontWeight.w700,
                      color: bgDark,
                      letterSpacing: 1),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      RatingBar.builder(
                        unratedColor: bgGrey.withOpacity(.5),
                        itemSize: 30,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: bgYellow,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      defaultText(
                          text: "4/5",
                          size: 14,
                          fontWeight: FontWeight.w700,
                          color: bgGrey,
                          letterSpacing: 1),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  defaultText(
                      text: "Write Your Review",
                      size: 14,
                      fontWeight: FontWeight.w700,
                      color: bgDark,
                      letterSpacing: 1),
                  SizedBox(height: 12),
                  defaultTextField(
                    controller: reviewController,
                    placeholder: "Write your review here",
                    lines: 5,
                  ),
                  SizedBox(height: 12),

                  defaultButton(
                      onTap: () {},
                      text: "+",
                      textSize: 30,
                      width: 75,
                      height: 75,
                      textWeight: FontWeight.normal,
                      borderColor: primary,
                      color: Colors.transparent,
                      textColor: bgDark)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
