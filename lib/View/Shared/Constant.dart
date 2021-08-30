
import 'package:market/Model/Products/productModel.dart';

final RegExp
emailRegExp = RegExp("^[a-zA-Z0-9.a-zA-Z0-9.!#\$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
final RegExp
passwordRegExp = RegExp("^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}\$");


List counter=[];
int getItemsCount(){
  for(int i=0;i<items.length;i++){
    if(!items[i]['delete']){
      counter.add(i);
    }
  }
  print('counter: '+counter.toString());
  return counter.length;
}