import 'package:flutter/material.dart';
import 'package:market/Account/AccountHome.dart';
import 'package:market/View/Layout/CartScreen/Cart.dart';
import 'package:market/View/Layout/Explore/ExploreScreen.dart';
import 'package:market/View/Layout/HomeScreen/home.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Constant.dart';
import 'Offer/OfferScreen.dart';

class BottomBarScreen extends StatefulWidget {
  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  void initState() {
    getItemsCount();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getFooter(counter.length.toString()),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: _selectedIndex,
      children: [
        Home(),
        ExploreScreen(),
        Cart(),
        OfferScreen(),
        AccountHome(),
      ],
    );
  }
  Widget getFooter(String itemCount) {
    List bottomIcons = [
      {"icon": Icons.home_outlined, "label": "Home","isIcon":true},
      {"icon": Icons.search, "label": "Explore","isIcon":true},
      {"icon": Icons.shopping_cart_outlined, "label": "Cart","isIcon":false},
      {"icon": Icons.local_offer_outlined, "label": "Offer","isIcon":true},
      {"icon": Icons.person_outline, "label": "Account","isIcon":true},
    ];
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            bottomIcons.length,
                (index) {
              return bottomIcons[index]['isIcon']?
               GestureDetector(
                onTap: (){
                  _onItemTapped(index);
                  },
                  child: Container(
                   // width: MediaQuery.of(context).size.width/5,
                    // color:  Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          bottomIcons[index]["icon"],
                          color: index==_selectedIndex?primary:Colors.grey,
                          size: 35,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          bottomIcons[index]["label"],
                          style: TextStyle(fontSize: 12.0, color: index==_selectedIndex?primary:Colors.grey),
                        ),
                      ],
                    ),
                  ),
                // ),
              ): GestureDetector(
                  onTap: () {
                _onItemTapped(index);
              },
                  child: cartIcon(index,itemCount));
            },
          ),
        ),
      ),
    );
  }
  Widget cartIcon(int index,String count) {
    return Container(
      // width: MediaQuery.of(context).size.width/6,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_cart_outlined,
                color: index==_selectedIndex?primary:Colors.grey,
                size:35,
              ),
              SizedBox(
                height: 5,
              ),
              Text('Cart',
                style: TextStyle(fontSize: 12.0, color: index==_selectedIndex?primary:Colors.grey),

              )
            ],
          ),
          Positioned(
            top:6,
            right:0,
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Text(count,
                textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
