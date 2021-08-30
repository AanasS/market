import 'package:flutter/material.dart';
import 'package:market/View/Layout/Carousel.dart';

import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

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
    'Work Equipment',
    'Woman Bag',
    'Man Shoes',
    'Heigh Heels'
  ];
  List<String> imgs=[
    'assets/images/Offer Banner.png'
    'assets/images/Offer Banner.png'
    'assets/images/Offer Banner.png'
    'assets/images/Offer Banner.png'
    'assets/images/Offer Banner.png'
  ];
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        defaultTextField(
                          width: MediaQuery.of(context).size.width - 110,
                          controller: search,
                          placeholder: 'Search Product',
                          prefixIcon: Icons.search,
                          onChange: (value) {
                            print(value);
                          },
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                            size: 28,
                          ),
                        ),
                        Spacer(),
                        Container(
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
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 10,),
                  // Offers Banner
                  Carousel(imgs),
                  //category
                  Padding(
                    padding:EdgeInsets.only(left: 16,right: 16),
                    child: Column(
                      children: [
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
                            Text('More Category',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: primary,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Container(
                          height: 110,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: categoryIcons.length,
                              itemBuilder:(BuildContext context, int index){
                              return categoryWidget(imagePath: categoryIcons[index], title: categoryName[index]);
                              }
                          ),
                        ),
                      ],
                    ),
                  ),
                  //

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
