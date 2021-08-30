import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/View/Shared/Colors.dart';
class Carousel extends StatefulWidget {
  final  List imgs;
  Carousel(this.imgs);
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> imagesSlider=widget.imgs.map((item) => Container(
      child: InkWell(
        onTap: (){print('$_current clicked' );},
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: [
              Image.asset(
                  item,
                  fit: BoxFit.cover,
                  width: 1000
              ),
              Positioned(
                right: 0.0,
                left: 0.0,
                bottom: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      )
                  ),
                  child: Text('',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ],
          ),
        ),
      ),
    )).toList();

    return Column(
        children: [
          CarouselSlider(
            items: imagesSlider,
            //  carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 1,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          SizedBox(height: 8.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imgs.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : primary)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),

        ]);
  }
}
