import 'package:ecommerceapp/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nike',
      price: '240',
      imagePath: 'lib/img/nike.png',
      description: 'Cool',
    ),
    Shoe(
      name: 'Addidas',
      price: '200',
      imagePath: 'lib/img/addidas.png',
      description: 'addidas',
    ),
    Shoe(
      name: 'Balance',
      price: '300',
      imagePath: 'lib/img/new_balance.png',
      description: 'new balance',
    ),
    Shoe(
      name: 'Saucony',
      price: '320',
      imagePath: 'lib/img/saucony.png',
      description: 'saucony',
    ),
  ];

  // list of items in cart
  List<Shoe> userCart = [];

  // get list
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
