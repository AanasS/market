import 'package:flutter/material.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';
class OfferScreen extends StatefulWidget {
  @override
  _OfferScreenState createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
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
            text: "Offer",
            size: 16,
            fontWeight: FontWeight.w700,
            color: bgDark,
            letterSpacing: 1),
      ),
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 343,
                height: 80,
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: defaultText(
                      text: 'Use “MEGSL” Cupon For Get 90%off',
                      size: 16,
                      fontWeight: FontWeight.w700,
                      color: light,
                      letterSpacing: 0,
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Container(
                width: 343,
                height: 206,
                child: Image.asset('assets/images/Offer Banner.png'),
              ),
              SizedBox(height: 8,),
              Container(
                width: 343,
                height: 206,
                child: Image.asset('assets/images/Offer Banner 2.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
