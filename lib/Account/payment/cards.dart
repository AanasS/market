import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:market/View/Shared/Colors.dart';
import 'package:market/View/Shared/Component.dart';

class PaymentCards extends StatefulWidget {
  const PaymentCards({Key? key}) : super(key: key);

  @override
  _PaymentCardsState createState() => _PaymentCardsState();
}

class _PaymentCardsState extends State<PaymentCards> {
  List<Card> cards = [
    Card("6326    9124    8124    9875", "19/2042", "909", "Ahmed Anas",CardType.mastercard),
    Card("5827    9966    7741    7912", "19/2023", "123", "Ahmed Khalid",CardType.visa),
  ];

  @override
  Widget build(BuildContext context) {
    print("q");
    return Scaffold(
      appBar:
          defaultAppBar(title: "Add Card", isLeading: true, context: context),
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return cardWidget(cards[index]);
              },
              itemCount: cards.length,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
                padding: EdgeInsetsDirectional.all(16),
                child: defaultButton(onTap: () {}, text: "Add Card")),
          )
        ],
      )),
    );
  }

  Widget cardWidget(Card card) {
    return InkWell(
      onTap: () {
       setState(() {
         card.isCvvShowed = !card.isCvvShowed;
       });
      },
      child: CreditCardWidget(
        cardType: card.type,
        cardNumber: card.cardNumber,
        expiryDate: card.expireDate,
        cardHolderName: card.cardHolder,
        cvvCode: card.securityCode,
        showBackView: card.isCvvShowed,
        cardBgColor: primary,
        obscureCardNumber: false,
        obscureCardCvv: false,
        height: 190,
        textStyle: TextStyle(color: Colors.white, fontSize: 20),
        width: MediaQuery.of(context).size.width,
        animationDuration: Duration(milliseconds: 1000),
      ),
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

class Card {
  String cardNumber = "";
  String expireDate = "";
  String securityCode = "";
  String cardHolder = "";
  CardType type = CardType.visa;
  bool isCvvShowed = false;

  Card(this.cardNumber, this.expireDate, this.securityCode, this.cardHolder,
      this.type);
}
