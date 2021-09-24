import 'package:flutter/material.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';

import 'cart/cart_screen.dart';

//We use name route
// All our routes will be available here

// ignore: unnecessary_cast
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(product: null,),
  CartScreen.routeName: (context) => CartScreen(),
} as Map<String, WidgetBuilder>;
