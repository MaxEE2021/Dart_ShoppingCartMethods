


import 'shopping_cart.dart';

class CartLogic {
  var IDroductList =[];
  var cartList=[];
  // var prices=[];
  int freeShippingPrice = 500;
  

  addToCart(product) {
    var index = cartList.indexWhere((p) => p['id'] == product['id']);
    index != -1 ? cartList[index]['qty']++ : cartList.add(product);
    print("you have added ${product['name']} to the list");


  }

  removeFromCart(product) {
    var index = cartList.indexWhere((p) => p['id'] == product['id']);
    var name = cartList[index]['name'];
    if  (index != 1){
      if(cartList[index]['qty'] > 1){
        cartList[index]['qty']--;
        print("you have removed ${name} from the cart now you have ${cartList[index]['qty']} $name in the cart");
      }
      else{
        cartList.removeAt(index);
        print("now you have 0 $name");
      }
    }
    else{
      print("product not Found");
    }


  }

  getTotalQty() {
    num TotalQty=0;
    int n=0; 
    int i=cartList.length;
    for( n;n<i;n++){
      TotalQty += cartList[n]['qty'];
    }
    print("totalqty = $TotalQty");
    return TotalQty;
  }

  getTotalPrice() {
    num TotalPrice=0;
    int n=0; 
    int i=cartList.length;
    for( n;n<i;n++){
      TotalPrice += cartList[n]['qty'] * cartList[n]['price'];
    }
    print("The total price is : $TotalPrice");
    return TotalPrice;
  }

  isFreeShippingEligible() {
    var totalprice =getTotalPrice();
    if(totalprice >= freeShippingPrice){
      print("the freeShipping is Free");
      return true;
    }
    else{
      print("Sorry you have to pay for ShippingPrice");
      return false;
    }
  }



}


