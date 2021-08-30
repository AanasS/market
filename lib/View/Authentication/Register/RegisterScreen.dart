import 'package:flutter/material.dart';
import 'package:market/Provider/ObSecure.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';
import 'package:market/View/Shared/Constant.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  @override
  _Register createState() => _Register();
}

class _Register extends State<Register> {
  TextEditingController _fullName = TextEditingController();
  TextEditingController _userEmail = TextEditingController();
  TextEditingController _userPassword = TextEditingController();
  TextEditingController _userConfirmPassword = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 16, end: 16),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  headerContainer(
                      header: "Let’s Get Started",
                      title: "Create an new account"),
                  defaultTextField(
                      controller: _fullName,
                      placeholder: "Full Name",
                      prefixIcon: Icons.person_outline_outlined,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return ("Name is required");
                        }
                      }),
                  SizedBox(
                    height: 8,
                  ),
                  defaultTextField(
                      controller: _userEmail,
                      placeholder: "Your Email",
                      prefixIcon: Icons.email_outlined,
                      type: TextInputType.emailAddress,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return ("Email is required");
                        }
                        if(!emailRegExp.hasMatch(value)){
                          return("Try Valid Email");
                        }
                      }),
                  SizedBox(
                    height: 8,
                  ),
                  defaultTextField(
                      controller: _userPassword,
                      placeholder: "Password",
                      prefixIcon: Icons.lock_outlined,
                      suffixIcon: Provider.of<ObSecureProvider>(context)
                              .isRegisterPasswordSecure
                          ? Icons.remove_red_eye_outlined
                          : Icons.visibility_off_outlined,
                      isSecure: Provider.of<ObSecureProvider>(context)
                          .isRegisterPasswordSecure,
                      show: () {
                        Provider.of<ObSecureProvider>(context, listen: false)
                            .changeRegisterPasswordSecurity();
                      },
                      validate: (value) {
                        if (value!.isEmpty) {
                          return ("Password is required");
                        }
                        if(!passwordRegExp.hasMatch(value)){
                          return("Minimum eight ,"
                              " at least one letter and one digit");
                        }
                        if(value!=_userConfirmPassword.text){
                          return ("password didn't match");
                        }
                      }),
                  SizedBox(
                    height: 8,
                  ),
                  defaultTextField(
                      controller: _userConfirmPassword,
                      placeholder: "Confirm Password",
                      prefixIcon: Icons.lock_outlined,
                      suffixIcon: Provider.of<ObSecureProvider>(context)
                              .isConfirmPasswordSecure
                          ? Icons.remove_red_eye_outlined
                          : Icons.visibility_off_outlined,
                      isSecure: Provider.of<ObSecureProvider>(context)
                          .isConfirmPasswordSecure,
                      show: () {
                        Provider.of<ObSecureProvider>(context, listen: false)
                            .changeConfirmPasswordSecurity();
                      },
                      validate: (value) {
                        if (value!.isEmpty) {
                          return ("Confirm Password is required");
                        }
                        if(!passwordRegExp.hasMatch(value)){
                          return("Minimum eight ,"
                              " at least one letter and one digit");
                        }
                        if(value!=_userPassword.text){
                          return ("password didn't match");
                        }
                      }),
                  SizedBox(
                    height: 21,
                  ),
                  defaultButton(
                      text: "Sign Up",
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      }),
                  SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      defaultText(
                          text: " have an account?",
                          size: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey.shade700,
                          letterSpacing: 0),
                      SizedBox(
                        width: 2,
                      ),
                      InkWell(
                        onTap: () {
                          context.read<ObSecureProvider>().setDefault();
                          Navigator.pop(context);
                          print("sign in Pressed");
                        },
                        child: defaultText(
                            text: "Sign In",
                            size: 15,
                            fontWeight: FontWeight.bold,
                            color: primary,
                            letterSpacing: 0),
                      ),
                    ],
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
