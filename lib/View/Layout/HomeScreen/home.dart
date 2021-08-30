import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:market/View/Layout/Carousel.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

import 'CtegoryList.dart';
import 'Favourite Product.dart';
import 'Notifications/NotificationScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> categoryIcons=[
    'assets/icons/shirt.png',
    'assets/icons/dress.png',
    'assets/icons/man bag.png',
    'assets/icons/woman bag.png',
    'assets/icons/man shoes.png',
    'assets/icons/woman shoes.png'
  ];
  List<String> categoryName=[
    'Man Shirt',
    'Dress',
    'Man Work Equipment',
    'Woman Bag',
    'Man Shoes',
    'Heigh Heels'
  ];
  List<String> flashSaleImg=[
    'assets/images/products/nikeair.png',
    'assets/images/products/bag3.png',
    'assets/images/products/shoes3.png',
  ];
  List<String> products=[
    'assets/images/products/nikeair.png',
    'assets/images/products/bag3.png',
    'assets/images/products/shoes3.png',
    'assets/images/products/shoes2.png',
    'assets/images/products/shoes.png',
  ];
  final List<String> bannerImgs = [
    'assets/images/Offer Banner.png',
    'assets/images/Offer Banner.png',
    'assets/images/Offer Banner.png',
    'assets/images/Offer Banner.png',
    'assets/images/Offer Banner.png',
  ];

  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: defaultTextField(
                            controller: search,
                            placeholder: 'Search Product',
                            prefixIcon: Icons.search,
                            validate: (value) {
                              if (value!.isEmpty) {
                                // return ("Email is required");
                              }
                            }),
                      ),
                      // defaultTextField(
                      //   width: MediaQuery.of(context).size.width*0.7,
                      //   controller: search,
                      //   placeholder: 'Search Product',
                      //   prefixIcon: Icons.search,
                      //   onChange: (value) {
                      //     print(value);
                      //   },
                      // ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouriteProduct()));
                        },
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                          size: 28,
                        ),
                      ),
                      // Spacer(),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>NotificationScreen()));
                        },
                        child: Container(
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.notifications_none_rounded,
                                    color: Colors.grey,
                                    size: 28,
                                  ),
                                ],
                              ),
                              Positioned(
                                top: 0,
                                right: 3,
                                child: Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 8,),
                  // Offers Banner
                  Carousel(bannerImgs),
                  //category
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Category',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: bgDark,
                      ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryList()));
                        },
                        child: Text('More Category',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0,),
                  Container(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryIcons.length,
                        itemBuilder:(BuildContext context, int index){
                        return categoryWidget(imagePath: categoryIcons[index], title: categoryName[index],);
                        }
                    ),
                  ),
                  SizedBox(height: 12.0,),
                  // flash sale
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Flash Sale',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: bgDark,
                        ),
                      ),
                      Text('See More',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: primary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0,),
                  Container(
                    height: 260,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: flashSaleImg.length,
                        itemBuilder:(BuildContext context, int index){
                          return itemProduct(imagePath: flashSaleImg[index], title: 'Nike Air Max 270 React ENG', price: 299.43, oldPrice: 534.33, offer: '24% Off');
                        }
                    ),
                  ),
                  // mega sale
                  SizedBox(height: 12,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Mega Sale',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: bgDark,
                        ),
                      ),
                      Text('See More',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: primary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0,),
                  Container(
                    height: 260,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: flashSaleImg.length,
                        itemBuilder:(BuildContext context, int index){
                          return itemProduct(imagePath: flashSaleImg[index],
                              title: 'Nike Air Max 270 React ENG',
                              price: 299.43, oldPrice: 534.33,
                              offer: '24% Off');
                        }
                    ),
                  ),
                  SizedBox(height: 16,),
                  //Recommended product
                  Stack(
                    children: [
                      Container(
                        height: 206,
                        width: 343,
                        child: Image.asset('assets/images/recommended.png'),
                      ),
                      Positioned(
                        top: 50,
                        left: 30,
                        child: Container(
                          height: 80,
                          width: 220,
                          // color: Colors.green,
                          child: defaultText(
                              text: "Recommended Product",
                              size: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1),
                        ),
                      ),
                      Positioned(
                        top: 130,
                        left: 30,
                        child: defaultText(
                            text: "We recommend the best for you",
                            size: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            letterSpacing: 1),
                      )
                    ],
                  ),
                  SizedBox(height: 8,),
                  //products gridview
                  GridView.count(
                    childAspectRatio:1/1.8,
                    clipBehavior: Clip.antiAlias,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    children: List.generate(products.length, (index) {
                      return itemProduct(
                        isRated: true,
                          // showDeleteIcon: true,
                          imagePath: products[index],
                          title: 'Nike Air Max 270 React ENG',
                          price: 299.43, oldPrice: 534.33,
                          offer: '24% Off');
                    }),
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
