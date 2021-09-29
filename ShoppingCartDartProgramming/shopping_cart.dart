import 'cartLogic.dart';

List cart = [];
int freeShippingPrice = 500;
CartLogic cart1Instance = CartLogic();
void main() {
  List _products = [
    {
      "id": 1001,
      "name": "Apple",
      "price": 200,
      "qty": 1,
    },
    {
      "id": 1002,
      "name": "Orange",
      "price": 230,
      "qty": 1,
    },
    {
      "id": 1003,
      "name": "banana",
      "price": 50,
      "qty": 1,
    },
    {
      "id": 1004,
      "name": "pine apple",
      "price": 180,
      "qty": 1,
    },
    {
      "id": 1005,
      "name": "mango",
      "price": 250,
      "qty": 1,
    },
    {
      "id": 1006,
      "name": "jack fruit",
      "price": 400,
      "qty": 1,
    }
  ];

  cart1Instance.addToCart(_products[3]);
  cart1Instance.addToCart(_products[3]);
  cart1Instance.addToCart(_products[2]);
  cart1Instance.isFreeShippingEligible();
  cart1Instance.getTotalQty();
  cart1Instance.addToCart(_products[5]);
  cart1Instance.removeFromCart(_products[3]);
  cart1Instance.getTotalPrice();
  cart1Instance.addToCart(_products[5]);
  cart1Instance.isFreeShippingEligible();




}

// addToCart(product) {}

// removeFromCart(product) {
// }

// getTotalQty() {}

// getTotalPrice() {}

// isFreeShippingEligible() {}
