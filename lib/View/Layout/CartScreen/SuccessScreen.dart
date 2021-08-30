import 'package:flutter/material.dart';
import 'package:market/View/Layout/CartScreen/Cart.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';
class SuccessScreen extends StatefulWidget {
  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Success Icon.png',
                    height: 72,
                    width: 72,
                  ),
                  SizedBox(height: 16,),
                  defaultText(
                      text: 'Success',
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
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      text: 'Back To Order')
                ],
              ),
            ),
          )
      ),
    );
  }
}
