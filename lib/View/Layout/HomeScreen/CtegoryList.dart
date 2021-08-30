import 'package:flutter/material.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';
class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  List<String> category=[
    'assets/icons/shirt.png',
    'assets/icons/bikini.png',
    'assets/icons/dress.png',
    'assets/icons/man bag.png',
    'assets/icons/man pants.png',
    'assets/icons/man shoes.png',
    'assets/icons/man underwear.png',
    'assets/icons/Tshirt.png',
    'assets/icons/woman bag.png',
    'assets/icons/woman pants.png',
    'assets/icons/woman shoes.png',
    'assets/icons/woman tshirt.png',
    'assets/icons/skirt.png'
  ];
  List<String> categoryName=[
    'Shirt',
    'Bikini',
    'Dress',
    'Work Equipment',
    'Man Pants',
    'Man Shoes',
    'Man Underwear',
    'Man T-Shirt',
    'Woman Bag',
    'Woman Pants',
    'High Heels',
    'Woman T-Shirt',
    'Skirt'
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
            text: "Category",
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
      body: ListView.builder(
        itemCount: category.length,
        itemBuilder: (BuildContext context,int index){
          return ListTile(
            leading: Image.asset(category[index]),
            title: defaultText(
                text: categoryName[index],
                size: 12,
                fontWeight: FontWeight.w700,
                color: bgDark,
                letterSpacing: 0.5),
          );
        },
      ),
    );
  }
}
