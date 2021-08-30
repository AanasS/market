import 'package:flutter/material.dart';
import 'package:market/Provider/parent_provider.dart';

class PaymentProvider extends MainProvider {

  String cardNumber = "";

  void appendCardNumber(String value) {
    if (cardNumber.length != 0 && cardNumber.length % 4 == 0) {
      print("Entered");
      cardNumber += "    " + value;
    } else {
      cardNumber += value;
    }
    notifyListeners();
  }

//
// bool _isConfirmPasswordSecure = true;
// bool _isRegisterPasswordSecure = true;
// bool _isLoginPasswordSecure = true;
//
//
//
// bool get isLoginPasswordSecure => _isLoginPasswordSecure;
// bool get isRegisterPasswordSecure => _isRegisterPasswordSecure;
// bool get isConfirmPasswordSecure => _isConfirmPasswordSecure;
//
// void changeLoginPasswordSecurity() {
//   _isLoginPasswordSecure = !_isLoginPasswordSecure;
//   notifyListeners();
// }
// void changeRegisterPasswordSecurity() {
//   _isRegisterPasswordSecure = !_isRegisterPasswordSecure;
//   notifyListeners();
// }
//
// void changeConfirmPasswordSecurity() {
//   _isConfirmPasswordSecure = !_isConfirmPasswordSecure;
//   notifyListeners();
// }
//
// void setDefault(){
//   _isConfirmPasswordSecure = true ;
//   _isLoginPasswordSecure = true ;
//   _isRegisterPasswordSecure = true ;
//   notifyListeners();
// }
}
