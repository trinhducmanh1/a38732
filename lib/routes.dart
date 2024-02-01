import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/products/products_screen.dart';

import 'screens/cart/cart_screen.dart';
import 'screens/details/details_screen.dart';
import 'screens/home/home_screen.dart';


final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  ProductsScreen.routeName: (context) => const ProductsScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
};
