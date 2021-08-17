import 'package:flutter/material.dart';
import 'package:shop_app/models/Cart.dart';

import 'package:shop_app/constants.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    required this.cart,
  });

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    var kPrimaryColor2 = kTextColor;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 220,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.grey),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Image(
                    height: 200,
                    width: 100,
                    image: AssetImage(cart.product.image),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(width: 25.0),
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(cart.product.title,
                    style: TextStyle(fontSize: 16, color: Colors.black)), //Text
                const SizedBox(
                  height: 10,
                ),
                Text.rich(
                  TextSpan(
                    text: "\$${cart.product.price}",
                    style: TextStyle(color: kPrimaryColor2),
                    children: [
                      TextSpan(
                          text: " x ${cart.numOfItems}",
                          style: TextStyle(
                              color: Colors.grey.shade900)), //TextSpan
                      //Text.rich
                    ],
                  ),
                )
              ]),
        ]),
      ),
    );
  }
}
