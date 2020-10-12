import 'package:ui_kit/cedicartmod.dart';

class AppData {
  static List<Cartmod_model> selectedCart = [];

  static int numsel = selectedCart.length;
  static List<Cartmod_model> cedicart = [
    Cartmod_model(
        image: 'images/6.jpg',
        price: 'Ghc 560',
        ttl: 'My good product',
        checked: false,
        qty: 2,
        shipping: 'DHL 3 day shipping'),
    Cartmod_model(
        image: 'images/6.jpg',
        price: 'Ghc 560',
        ttl: 'My good product',
        checked: false,
        qty: 1,
        shipping: 'DHL 3 day shipping'),
    Cartmod_model(
        image: 'images/6.jpg',
        price: 'Ghc 560',
        ttl: 'My good product',
        checked: false,
        qty: 3,
        shipping: 'DHL 3 day shipping'),
    Cartmod_model(
        image: 'images/6.jpg',
        price: 'Ghc 560',
        ttl: 'My good product',
        checked: false,
        qty: 4,
        shipping: 'DHL 3 day shipping'),
  ];
}
