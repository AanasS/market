import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:market/Provider/ObSecure.dart';
import 'package:market/View/Authentication/Register/RegisterScreen.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';
import 'package:market/View/Shared/Constant.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _userEmail = TextEditingController();
  TextEditingController _userPassword = TextEditingController();

  bool isSecure = true;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsetsDirectional.only(start: 16, end: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                headerContainer(
                    header: "Welcome to market", title: "Sign in to continue"),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      defaultTextField(
                          controller: _userEmail,
                          placeholder: "Your Email",
                          type:TextInputType.emailAddress ,
                          prefixIcon: Icons.email_outlined,
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
                                  .isLoginPasswordSecure
                              ? Icons.remove_red_eye_outlined
                              : Icons.visibility_off_outlined,
                          isSecure: Provider.of<ObSecureProvider>(context)
                              .isLoginPasswordSecure,
                          show: () {
                            Provider.of<ObSecureProvider>(context, listen: false)
                                .changeLoginPasswordSecurity();
                          },
                          validate: (value) {
                            if (value!.isEmpty) {
                              return ("Password is required");
                            }
                            if(!passwordRegExp.hasMatch(value)){
                              return("Minimum eight ,"
                                  " at least one letter and one digit");
                            }

                          },
                      ),
                      SizedBox(
                        height: 21,
                      ),
                      defaultButton(
                          text: "Sign In",
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              // If the form is valid, display a snackbar. In the real world,
                              // you'd often call a server or save the information in a database.
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Processing Data')),
                              );
                            }
                          }),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      defaultText(
                          text: "OR",
                          size: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          letterSpacing: 1),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.grey.shade300,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                socialButton(
                    text: "Log in With Google",
                    iconPath: "assets/icons/Google.png",
                    onPressed: () {
                      print("Google Pressed");
                    }),
                SizedBox(
                  height: 8,
                ),
                socialButton(
                    text: "Log in With Facebook",
                    iconPath: "assets/icons/Facebook.png",
                    onPressed: () {
                      print("Facebook Pressed");
                    }),
                SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () {
                    print("Forgot Password");
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: defaultText(
                        text: "Forgot Password",
                        size: 15,
                        fontWeight: FontWeight.bold,
                        color: primary,
                        letterSpacing: 0),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    defaultText(
                        text: "Don’t have an account?",
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Register()));
                        print("Register Pressed");
                      },
                      child: defaultText(
                          text: "Register",
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
    );
  }
}
