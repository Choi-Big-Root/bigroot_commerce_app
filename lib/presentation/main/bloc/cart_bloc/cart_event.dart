part of 'cart_bloc.dart';

abstract class CartEvenet{
  CartEvenet();
}

class CartInitialized extends CartEvenet {
  CartInitialized();
}

class CartClosed extends CartEvenet {
  CartClosed();
}

class CartOpened extends CartEvenet {
  CartOpened(this.productInfo, this.quantity);
  final ProductInfo productInfo;
  final int quantity;
}