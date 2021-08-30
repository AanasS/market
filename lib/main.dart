import 'package:flutter/material.dart';
import 'package:market/Provider/ObSecure.dart';
import 'package:provider/provider.dart';

import 'View/Layout/BottomBarScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ObSecureProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
          
        ),
        home: BottomBarScreen(),
      ),
    );
  }
}
