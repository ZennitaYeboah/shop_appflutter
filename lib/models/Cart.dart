import 'package:flutter/material.dart';
import 'package:shop_app/Widgets/cart_cards.dart';

class CartItems extends ChangeNotifier {
  List<CartCards> cartItems = [];
  void removeItem(int index) {
    cartItems.removeAt(index);
    notifyListeners();
  }

  void addToCart(int quantity, double price, String title, String image,
      String itemColor, String itemSize) {
    cartItems.add(
      CartCards(
          price: price,
          label: title,
          units: quantity,
          image: image,
          itemColor: itemColor,
          itemSize: itemSize),
    );
    notifyListeners();
  }
}