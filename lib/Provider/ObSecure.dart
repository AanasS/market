import 'package:flutter/material.dart';

class ObSecureProvider with ChangeNotifier {

  bool _isConfirmPasswordSecure = true;
  bool _isRegisterPasswordSecure = true;
  bool _isLoginPasswordSecure = true;



  bool get isLoginPasswordSecure => _isLoginPasswordSecure;
  bool get isRegisterPasswordSecure => _isRegisterPasswordSecure;
  bool get isConfirmPasswordSecure => _isConfirmPasswordSecure;

  void changeLoginPasswordSecurity() {
    _isLoginPasswordSecure = !_isLoginPasswordSecure;
    notifyListeners();
  }
  void changeRegisterPasswordSecurity() {
    _isRegisterPasswordSecure = !_isRegisterPasswordSecure;
    notifyListeners();
  }

  void changeConfirmPasswordSecurity() {
    _isConfirmPasswordSecure = !_isConfirmPasswordSecure;
    notifyListeners();
  }

  void setDefault(){
    _isConfirmPasswordSecure = true ;
    _isLoginPasswordSecure = true ;
    _isRegisterPasswordSecure = true ;
    notifyListeners();
  }
}
