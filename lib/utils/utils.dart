import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_app_ui/model/product/product_model.dart';
import 'package:food_app_ui/view%20model/cart/cart_view_model.dart';

class Utils {
  static addToCart(ProductModel productModel) {
    if (CartViewModel.cartItems.contains(productModel)) {
      showToast(message: 'Already Added');
    } else {
      CartViewModel.cartItems.add(productModel);
      CartViewModel.addToItemTotal(productModel.price);
      showToast();
    }
  }

  // show toast
  static showToast({String message = 'Added to Cart'}) {
    return Fluttertoast.showToast(msg: message);
  }
}
