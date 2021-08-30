import 'package:flutter/material.dart';
import 'package:market/View/Layout/Explore/SearchResult.dart';
import 'package:market/View/Layout/HomeScreen/Favourite%20Product.dart';
import 'package:market/View/Layout/HomeScreen/Notifications/NotificationScreen.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class ExploreScreen extends StatefulWidget {
  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  bool _showSearchResult = false;

  List<String> searchResult = [
    'Nike Air Max 270 React ENG ',
    'Nike Air Vapormax 360',
    'Nike Air Max 270 React ENG ',
    'Nike Air Max 270 React',
    'Nike Air VaporMax Flyknit 3',
    'Nike Air Max 97 Utility'
  ];
  List<String> categoryIcons = [
    'assets/icons/shirt.png',
    'assets/icons/dress.png',
    'assets/icons/man bag.png',
    'assets/icons/woman bag.png',
    'assets/icons/man shoes.png',
    'assets/icons/woman shoes.png'
  ];
  List<String> categoryName = [
    'Man Shirt',
    'Dress',
    'Man Work Equipment',
    'Woman Bag',
    'Man Shoes',
    'Heigh Heels'
  ];
  TextEditingController search = TextEditingController();
  void _clearTextField() {
    search.clear();
    setState(() {
      _showSearchResult = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(!_showSearchResult){
      FocusScope.of(context).unfocus();
    }
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: !_showSearchResult
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            defaultTextField(
                              width: MediaQuery.of(context).size.width * 0.7,
                              controller: search,
                              placeholder: 'Search Product',
                              prefixIcon: Icons.search,
                              suffixIcon: search.text.isEmpty ? null : Icons.clear,
                              suffixIconTapped: _clearTextField,
                              ontap: (){
                                setState(() {
                                  search.text=' ';
                                  _showSearchResult = true;
                                });
                              },
                              onChange: (value) {
                                print(value);
                                setState(() {
                                  _showSearchResult = true;
                                });
                              },
                            ),
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
                            Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            NotificationScreen()));
                              },
                              child: Container(
                                child: Stack(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width,
                          color: light,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        defaultText(
                            text: 'Man Fashion',
                            size: 14,
                            fontWeight: FontWeight.w700,
                            color: bgDark,
                            letterSpacing: 0),
                        SizedBox(
                          height: 12,
                        ),
                        GridView.count(
                          childAspectRatio: 1 / 1.8,
                          clipBehavior: Clip.antiAlias,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisCount: 4,
                          mainAxisSpacing: 16,
                          children: List.generate(categoryName.length, (index) {
                            return categoryWidget(
                                imagePath: categoryIcons[index],
                                title: categoryName[index]);
                          }),
                        ),
                        defaultText(
                            text: 'Woman Fashion',
                            size: 14,
                            fontWeight: FontWeight.w700,
                            color: bgDark,
                            letterSpacing: 0),
                        SizedBox(
                          height: 12,
                        ),
                        GridView.count(
                          childAspectRatio: 1 / 1.8,
                          clipBehavior: Clip.antiAlias,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisCount: 4,
                          mainAxisSpacing: 16,
                          children: List.generate(categoryName.length, (index) {
                            return categoryWidget(
                                imagePath: categoryIcons[index],
                                title: categoryName[index]);
                          }),
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            defaultTextField(
                              width: MediaQuery.of(context).size.width * 0.75,
                              controller: search,
                              placeholder: 'Search Product',
                              prefixIcon: Icons.search,
                              suffixIcon:
                                  search.text.isEmpty ? null : Icons.clear,
                              suffixIconTapped: _clearTextField,
                              onChange: (value) {
                                print(value);
                                if(value == ''){
                                  setState(() {
                                    _showSearchResult=false;
                                  });
                                }
                                setState(() {});
                              },
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.mic,
                                color: Colors.grey,
                                size: 28,
                              ),
                            ),
                          ],
                        ),
                      SizedBox(height: 12,),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: searchResult.length,
                          itemBuilder: (BuildContext context, int index){
                            return InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchResult(searchResult[index])));
                              },
                              child: Container(
                                height: 54,
                                child: defaultText(
                                    text: searchResult[index],
                                    size: 12,
                                    fontWeight: FontWeight.w400,
                                    color: bgGrey,
                                    letterSpacing: 0),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
