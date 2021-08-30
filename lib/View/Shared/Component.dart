import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:market/View/Shared/Colors.dart';

AppBar defaultAppBar(
        {required String title,
        bool isLeading = false,
        BuildContext? context}) =>
    AppBar(
      toolbarHeight: 78,
      elevation: 0,
      leadingWidth: isLeading ? 30 : 0,
      leading: isLeading
          ? IconButton(
              onPressed: () {
                Navigator.pop(context!);
              },
              color: bgGrey,
              iconSize: 30,
              icon: Icon(Icons.chevron_left),
            )
          : Container(),
      backgroundColor: Colors.transparent,
      title: Container(
        child: defaultText(
            text: title,
            size: 16,
            fontWeight: FontWeight.w700,
            color: bgDark,
            letterSpacing: 1),
      ),
    );

Widget headerContainer({required String title, required String header}) =>
    Container(
      margin: EdgeInsets.only(top: 100, bottom: 28),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          defaultText(
              text: header,
              size: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1.5),
          SizedBox(
            height: 8,
          ),
          defaultText(
              text: title,
              size: 14,
              fontWeight: FontWeight.normal,
              color: Colors.grey,
              letterSpacing: 1),
        ],
      ),
    );

Widget defaultTextField(
        {required TextEditingController controller,
        required String placeholder,
          FontWeight? hintWeight,
        IconData? prefixIcon,
        IconData? suffixIcon,
          Function()? suffixIconTapped,
          Function()? ontap,
        double? width,
        Color iconColor = primary,
        Function? onChange(String value)?,
        TextInputType type = TextInputType.text,
        bool isSecure = false,
        bool isEnabled = true,
        double radTopRight = 5,
        double radBottomRight = 5,
        double radBottomLeft = 5,
        double radTopLeft = 5,
        String? Function(String?)? validate,
        Function()? show,
        int lines = 1,
        bool isBorderEnabled = true}) =>
    Container(
      width: width,
      child: TextFormField(
        maxLines: lines,
        enabled: isEnabled,
        onChanged: onChange,
        validator: validate,
        controller: controller,
        cursorColor: primary,
        obscureText: isSecure,
        keyboardType: type,
        decoration: prefixIcon != null
            ? InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    EdgeInsetsDirectional.only(start: 14, top: 10, bottom: 10),
                hintText: placeholder,
                hintStyle: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                prefixIcon: Icon(
                  prefixIcon,
                  color: iconColor,
                ),
                suffixIcon: IconButton(
                  icon: Icon(suffixIcon),
                  onPressed: show,
                  color: iconColor,
                ),
                enabledBorder: isBorderEnabled
                    ? OutlineInputBorder(
                        borderRadius:  BorderRadius.only(
                            topRight: Radius.circular(radTopRight),
                            bottomRight: Radius.circular(radBottomRight),
                            topLeft: Radius.circular(radTopLeft),
                            bottomLeft: Radius.circular(radBottomLeft)),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      )
                    : InputBorder.none,
                focusedBorder: isBorderEnabled
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(radTopRight),
                            bottomRight: Radius.circular(radBottomRight),
                            topLeft: Radius.circular(radTopLeft),
                            bottomLeft: Radius.circular(radBottomLeft)),
                        borderSide: BorderSide(
                          color: primary,
                        ),
                      )
                    : InputBorder.none,
              )
            : InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    EdgeInsetsDirectional.only(start: 14, top: 10, bottom: 10),
                hintText: placeholder,
                hintStyle: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                suffixIcon: IconButton(
                  icon: Icon(suffixIcon),
                  onPressed: show,
                  color: iconColor,
                ),
                enabledBorder: isBorderEnabled
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      )
                    : InputBorder.none,
                focusedBorder: isBorderEnabled
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(radTopRight),
                            bottomRight: Radius.circular(radBottomRight),
                            topLeft: Radius.circular(radTopLeft),
                            bottomLeft: Radius.circular(radBottomLeft)),
                        borderSide: BorderSide(
                          color: primary,
                        ),
                      )
                    : InputBorder.none,
              ),
        style: TextStyle(height: 1.7),
      ),
    );

Widget defaultText(
        {required String text,
        required double size,
        required FontWeight fontWeight,
        required Color color,
        TextAlign? align,
          double? height,
        required double letterSpacing}) =>
    Text(
      text,
      textAlign: align,
      style: TextStyle(
          fontWeight: fontWeight,
          color: color,
          fontSize: size,
          letterSpacing: letterSpacing),
    );

Widget defaultButton(
        {required Function() onTap,
        double height = 55,
        double radTopRight = 5,
        double radBottomRight = 5,
        double radBottomLeft = 5,
        double radTopLeft = 5,
        double? width,
        required String text,
        FontWeight textWeight = FontWeight.bold,
        double textSize = 14,
        Color color = primary,
        Color textColor = Colors.white,
        Color borderColor = Colors.transparent}) =>
    InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(radTopRight),
              bottomRight: Radius.circular(radBottomRight),
              topLeft: Radius.circular(radTopLeft),
              bottomLeft: Radius.circular(radBottomLeft)),
        ),
        child: defaultText(
            text: text,
            size: textSize,
            fontWeight: textWeight,
            color: textColor,
            letterSpacing: 1),
      ),
    );

Widget socialButton(
        {required String text,
        required String iconPath,
        required Function() onPressed}) =>
    Column(
      children: [
        InkWell(
          onTap: onPressed,
          child: Container(
            height: 55,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black.withOpacity(.3))),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Image.asset(iconPath),
                SizedBox(
                  width: 70,
                ),
                Expanded(
                  child: defaultText(
                      text: text,
                      size: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      letterSpacing: 1),
                ),
              ],
            ),
          ),
        )
      ],
    );

Widget categoryWidget({required String imagePath, required String title}) =>
    Container(
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(.3)),
                shape: BoxShape.circle),
            child: Image.asset(imagePath),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: defaultText(
                text: title,
                align: TextAlign.center,
                size: 12,
                fontWeight: FontWeight.normal,
                color: Colors.grey,
                letterSpacing: 1),
          )
        ],
      ),
    );

Widget itemProduct(
        {required String imagePath,
        required String title,
        required double price,
        required double oldPrice,
        bool showDeleteIcon = false,
        bool isRated = false,
        required String offer}) =>
    Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Container(
        width: 165,
        padding: EdgeInsetsDirectional.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: bgGrey),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath),
            SizedBox(
              height: 8,
            ),
            defaultText(
                text: title,
                size: 12,
                fontWeight: FontWeight.w700,
                color: bgDark,
                letterSpacing: 1),
            SizedBox(
              height: 16,
            ),
            defaultText(
                text: "\$299,43",
                align: TextAlign.right,
                size: 12,
                fontWeight: FontWeight.w600,
                color: primary,
                letterSpacing: 1),
            isRated
                ? Container(
                    margin: EdgeInsets.only(top: 8),
                    child: RatingBar.builder(
                      unratedColor: bgGrey,
                      itemSize: 22,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  )
                : Container(),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${oldPrice}',
                  style: TextStyle(
                    fontSize: 10,
                    color: bgGrey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                Text(
                  offer,
                  style: TextStyle(
                      fontSize: 10, color: bgRed, fontWeight: FontWeight.bold),
                ),
                showDeleteIcon
                    ? InkWell(
                        child: Icon(
                          Icons.delete_outline_outlined,
                          size: 27,
                          color: bgGrey,
                        ),
                      )
                    : Container(),
              ],
            ),
          ],
        ),
      ),
    );

Widget cartItems(
        {Function()? minusOnTap,
        Function()? plusOnTap,
        String quantity = "1",
        required String itemImg,
        required String itemName,
        required String itemPrice,
        Color? favIconColor,
        IconData? favIcon,
        Function()? favTab,
        Function()? deleteTab,
        bool isCartItem = true}) =>
    Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Container(
            padding: EdgeInsetsDirectional.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              border: Border.all(color: bgGrey.withOpacity(.3)),
            ),
            child: Row(
              children: [
                Image.asset(
                  itemImg,
                  width: 72,
                  height: 72,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  child: defaultText(
                                    text: itemName,
                                    size: 14,
                                    fontWeight: FontWeight.w700,
                                    color: bgDark,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: favTab,
                                child: Icon(
                                  favIcon,
                                  color: favIconColor,
                                ),
                              ),
                              if (isCartItem)
                                InkWell(
                                  onTap: deleteTab,
                                  child: Icon(
                                    Icons.delete_outline,
                                    color: bgGrey,
                                  ),
                                )
                            ],
                          ),
                        ),
                        SizedBox(height: 16,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              defaultText(
                                text: itemPrice,
                                size: 12,
                                fontWeight: FontWeight.bold,
                                color: primary,
                                letterSpacing: 0,
                              ),
                              if (isCartItem)
                                Container(
                                  decoration: BoxDecoration(
                                    // color: Colors.green,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    border: Border.all(color: bgGrey),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, right: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: minusOnTap,
                                          child: Image.asset(
                                              'assets/icons/Minus.png'),
                                        ),
                                        Container(
                                          height: 24,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            color: light,
                                            border: Border(
                                              left: BorderSide(
                                                color: bgGrey,
                                                width: 1,
                                              ),
                                              right: BorderSide(
                                                color: bgGrey,
                                                width: 1,
                                              ),
                                            ),
                                          ),
                                          child: defaultText(
                                            text: quantity,
                                            size: 16,
                                            align: TextAlign.center,
                                            fontWeight: FontWeight.normal,
                                            color: bgDark,
                                            letterSpacing: 0,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: plusOnTap,
                                          child: Icon(
                                            Icons.add,
                                            color: bgGrey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )));
Widget shipToAdress({
  required String title,
  required String details,
  required String phoneNumber,
  required Function() edit,
  required Function() delete,
  required Function() ontap,
  required bool isSelected,
})=>GestureDetector(
  onTap: ontap,
  child:   Padding(
    padding: const EdgeInsets.only(bottom: 16),
    child:   Container(
      width:343,
      height: 240,
      decoration: isSelected? BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: primary),
      ): BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: bgGrey),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            defaultText(
              text: title,
              size: 12,
              fontWeight: FontWeight.w700,
              color: bgDark,
              letterSpacing: 0,
            ),
            SizedBox(height:16,),
            defaultText(
              text: details,
              size: 12,
              fontWeight: FontWeight.normal,
              color: bgGrey,
              letterSpacing: 0,
            ),
            SizedBox(height:16,),
            defaultText(
              text: phoneNumber,
              size: 12,
              fontWeight:  FontWeight.normal,
              color: bgGrey,
              letterSpacing: 0,
            ),
            SizedBox(height:16,),
            Row(
              children: [
                defaultButton(
                    onTap: edit,
                    text: 'Edit',
                    width: 77,
                    height: 57
                ),
                SizedBox(width: 24,),
                IconButton(
                  onPressed: delete,
                  icon: Icon(Icons.delete_outline,color: bgGrey,size: 30,),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  ),
);
Widget notificationItem({
  required String leading,
  required String title,
  required String details,
  required String dateTime,

})=>Padding(
  padding: const EdgeInsets.only(bottom: 16),
  child: Container(
    height: 160,
    child: Row(
      children: [
        Container(
          width: 48,
          child: Column(
            children: [
              Image.asset(leading),
            ],
          ),
        ),
        Container(
          width:280,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              defaultText(
                text: title,
                size: 14,
                fontWeight: FontWeight.w700,
                color: bgDark,
                letterSpacing: 0.5,
              ),
              defaultText(
                text: details,
                size: 12,
                fontWeight: FontWeight.w400,
                height: 2.5,
                color: bgGrey,
                letterSpacing: 0.5,
              ),
              SizedBox(height: 8),
              defaultText(
                text: dateTime,
                size: 10,
                fontWeight: FontWeight.w400,
                color: bgDark,
                letterSpacing: 0.5,
              ),
            ],
          ),
        ),
      ],
    ),
  ),
);
Widget filterContainer({
  required double width,
  required String text,
  required FontWeight fontWeight,
  required Color color,
  required Color borderColor,

})=>Container(
  height: 50,
  width: width,
  decoration:
  BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    border: Border.all(color: borderColor ),
  ),
  child: Center(
    child: defaultText(
      text: text,
      size: 12,
      fontWeight: fontWeight,
      color: color,
      letterSpacing: 0.5,
    ),
  ),
);