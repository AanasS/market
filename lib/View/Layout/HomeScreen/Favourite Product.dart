import 'package:flutter/material.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class FavouriteProduct extends StatefulWidget {
  @override
  _FavouriteProductState createState() => _FavouriteProductState();
}

class _FavouriteProductState extends State<FavouriteProduct> {
  List<String> products = [
    'assets/images/products/nikeair.png',
    'assets/images/products/bag3.png',
    'assets/images/products/shoes3.png',
    'assets/images/products/shoes2.png',
    'assets/images/products/shoes.png',
  ];
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
            text: "Favourite Product",
            size: 16,
            fontWeight: FontWeight.w700,
            color: bgDark,
            letterSpacing: 1),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: bgGrey,
            size: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          childAspectRatio: 1 / 1.8,
          clipBehavior: Clip.antiAlias,
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          children: List.generate(products.length, (index) {
            return itemProduct(
                isRated: true,
                showDeleteIcon: true,
                imagePath: products[index],
                title: 'Nike Air Max 270 React ENG',
                price: 299.43,
                oldPrice: 534.33,
                offer: '24% Off');
          }),
        ),
      ),
    );
  }
}
