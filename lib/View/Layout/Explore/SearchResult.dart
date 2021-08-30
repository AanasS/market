import 'package:flutter/material.dart';
import 'package:market/View/Layout/Explore/FilterSearch.dart';
import 'package:market/View/Layout/Explore/ShortBy.dart';
import 'package:market/View/Layout/HomeScreen/CtegoryList.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class SearchResult extends StatefulWidget {
  final searchKey;
  SearchResult(this.searchKey);
  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  TextEditingController search=TextEditingController();
  bool searchNotFound=false;
  List<String> products=[
    'assets/images/products/nikeair.png',
    'assets/images/products/shoes3.png',
    'assets/images/products/shoes2.png',
    'assets/images/products/shoes.png',
    'assets/images/products/nikeair.png',
    'assets/images/products/shoes3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    defaultTextField(
                      width: MediaQuery.of(context).size.width*0.7,
                      controller: search,
                      placeholder: widget.searchKey,
                      hintWeight: FontWeight.w700,
                      prefixIcon: Icons.search,
                      onChange: (value) {
                        print(value);
                      },
                    ),
                    Spacer(),
                    InkWell(
                      onTap: (){
                        print('shortBy Icon pressed');
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>ShortBy()));
                      },
                      child: Image.asset('assets/icons/Short icon.png'),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=> FilterSearch(),
                        ));
                      },
                      child: Image.asset('assets/icons/filterIcon.png'),
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey,
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    !searchNotFound?InkWell(
                      onTap: (){
                        setState(() {
                          searchNotFound=!searchNotFound;
                        });
                      },
                      child: defaultText(
                          text: '145 Result',
                          size: 12,
                          fontWeight: FontWeight.w700,
                          color: bgGrey,
                          letterSpacing: 0.5,
                      ),
                    ): InkWell(
                      onTap: (){
                        setState(() {
                          searchNotFound=!searchNotFound;
                        });
                      },
                      child: defaultText(
                        text: '0 Result',
                        size: 12,
                        fontWeight: FontWeight.w700,
                        color: bgGrey,
                        letterSpacing: 0.5,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryList()));
                      },
                      child: Container(
                        width: 104,
                        height: 24,
                        // color: Colors.red,
                        child: Row(
                          children: [
                            defaultText(
                              text: 'Man Shoes',
                              size: 12,
                              fontWeight: FontWeight.w700,
                              color: bgDark,
                              letterSpacing: 0.5,
                            ),
                            SizedBox(width: 8,),
                            Container(
                              width: 24,
                              height: 24,
                              // color: Colors.green,
                              child: Icon(Icons.keyboard_arrow_down,color: bgGrey,size: 25,),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 18,),
                !searchNotFound?  GridView.count(
                  childAspectRatio: 1 / 1.8,
                  clipBehavior: Clip.antiAlias,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  children: List.generate(products.length, (index) {
                    return  itemProduct(
                        isRated: true,
                        // showDeleteIcon: true,
                        imagePath: products[index],
                        title: 'Nike Air Max 270 React ENG',
                        price: 299.43, oldPrice: 534.33,
                        offer: '24% Off');
                  }),
                ): Container(
                  height: 500,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/Alert Icon-Not Found.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(height: 16,),
                        defaultText(
                          text: 'Product Not Found',
                          size: 24,
                          fontWeight: FontWeight.w700,
                          color: bgDark,
                          letterSpacing: 0,
                        ),
                        SizedBox(height: 10,),
                        defaultText(
                          text: 'Thank you for shopping using lafyuu',
                          size: 12,
                          fontWeight: FontWeight.w400,
                          color: bgDark,
                          letterSpacing: 0,
                        ),
                        SizedBox(height: 8,),
                        defaultButton(
                            onTap: (){
                              Navigator.pop(context);

                            },
                            text: 'Back To Home')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
