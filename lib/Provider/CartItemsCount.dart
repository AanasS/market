import 'package:flutter/material.dart';
class CartItemsCount extends InheritedWidget{
  int counter =0;
  Widget child;
  CartItemsCount({required this.child}) : super(child: child);

  @override
  bool updateShouldNotify(CartItemsCount oldWidget){
    return oldWidget.counter !=counter;
  }
  static CartItemsCount? of(BuildContext context) => context.dependOnInheritedWidgetOfExactType();

}