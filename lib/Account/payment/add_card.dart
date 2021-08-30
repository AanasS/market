import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:market/Provider/payment_card.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';
import 'package:provider/provider.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  _AddCardState createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  TextEditingController _cardNumber = TextEditingController();
  TextEditingController _expireDate = TextEditingController();
  TextEditingController _securityCode = TextEditingController();
  TextEditingController _cardHolder = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isCvvFocused = false;

  @override
  Widget build(BuildContext context) {
    print("q");
    return Scaffold(
      appBar:
          defaultAppBar(title: "Add Card", isLeading: true, context: context),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsetsDirectional.all(16),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CreditCardWidget(
                  cardNumber: _cardNumber.text,
                  expiryDate: _expireDate.text,
                  cardHolderName: _cardHolder.text,
                  cvvCode: _securityCode.text,
                  showBackView: isCvvFocused,
                  cardBgColor: primary,
                  obscureCardNumber: true,
                  obscureCardCvv: true,
                  height: 175,
                  textStyle: TextStyle(color: Colors.white, fontSize: 20),
                  width: MediaQuery.of(context).size.width,
                  animationDuration: Duration(milliseconds: 1000),
                ),
                // SizedBox(
                //   height: 24,
                // ),
                //
                // CreditCardForm(
                //   formKey: _formKey,
                //   obscureCvv: true,
                //   obscureNumber: false,
                //   cardNumber: _cardNumber.text,
                //   expiryDate: _expireDate.text,
                //   cardHolderName: _cardHolder.text,
                //   cvvCode: _securityCode.text,
                //   themeColor: Colors.blue,
                //   cardNumberDecoration: const InputDecoration(
                //     border: OutlineInputBorder(),
                //     hintText: 'Enter Card Number',
                //   ),
                //   expiryDateDecoration: const InputDecoration(
                //     border: OutlineInputBorder(),
                //     labelText: 'Expired Date',
                //     hintText: 'XX/XX',
                //   ),
                //   cvvCodeDecoration: const InputDecoration(
                //     border: OutlineInputBorder(),
                //     hintText: 'CVV',
                //   ),
                //   cardHolderDecoration: const InputDecoration(
                //     border: OutlineInputBorder(),
                //    hintText: 'Card Holder',
                //   ),
                //   onCreditCardModelChange: onCreditCardModelChange,
                // ),

                Container(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        defaultText(
                            text: "Card Number",
                            size: 14,
                            fontWeight: FontWeight.w700,
                            color: bgDark,
                            letterSpacing: 0),
                        SizedBox(
                          height: 12,
                        ),
                        defaultTextField(
                            // type: TextInputType.number,
                            controller: _cardNumber,
                            suffixIcon: Icons.dangerous_sharp,
                            show: () {},
                            onChange: (value) {
                              Provider.of<PaymentProvider>(context,
                                      listen: false)
                                  .appendCardNumber(value.substring(
                                      value.length - 1, value.length));
                            },
                            placeholder: "Enter Card Number"),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  defaultText(
                                      text: "Expiration Date",
                                      size: 14,
                                      fontWeight: FontWeight.w700,
                                      color: bgDark,
                                      letterSpacing: 0),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  defaultTextField(
                                      width: MediaQuery.of(context).size.width *
                                          .45,
                                      type: TextInputType.numberWithOptions(),
                                      controller: _expireDate,
                                      placeholder: "Expiration Date"),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  defaultText(
                                      text: "Security Code",
                                      size: 14,
                                      fontWeight: FontWeight.w700,
                                      color: bgDark,
                                      letterSpacing: 0),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  defaultTextField(
                                      width: MediaQuery.of(context).size.width *
                                          .45,
                                      type: TextInputType.number,
                                      controller: _securityCode,
                                      placeholder: "Security Code"),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        defaultText(
                            text: "Card Holder",
                            size: 14,
                            fontWeight: FontWeight.w700,
                            color: bgDark,
                            letterSpacing: 0),
                        SizedBox(
                          height: 12,
                        ),
                        defaultTextField(
                            controller: _cardHolder,
                            placeholder: "Enter Card Holder"),
                        // Spacer(),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height *.35,
                ),
                defaultButton(onTap: () {}, text: "Add Card")
              ],
            ),
          ),
        ),
      )),
    );
  }

// void onCreditCardModelChange(CreditCardModel? creditCardModel) {
//   setState(() {
//     _cardNumber.text = creditCardModel!.cardNumber;
//     _expireDate.text = creditCardModel.expiryDate;
//     _cardHolder.text = creditCardModel.cardHolderName;
//     _securityCode.text = creditCardModel.cvvCode;
//     isCvvFocused = creditCardModel.isCvvFocused;
//   });
// }
}
