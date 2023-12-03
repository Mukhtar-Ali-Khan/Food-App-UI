import '../../model/product/product_model.dart';

class CartViewModel {
  static List<ProductModel> cartItems = [];
  static double subtotal = 0.0, itemTotal = 0.0, dCharges = 2.0;
  static Map<int, int> singleItemCountController = {};

  static void addToItemTotal(itemPrice) {
    itemTotal = itemTotal + double.parse(itemPrice);
    calculateSubtotal(itemTotal);
  }

  static void subtractItemPrice(itemPrice) {
    itemTotal = itemTotal - double.parse(itemPrice);
    calculateSubtotal(itemTotal);
  }

  static void calculateSubtotal(double total) {
    subtotal = dCharges + total;
  }

  static void singleItemCount() {
    cartItems.asMap().forEach((key, value) {
      if (!singleItemCountController.containsKey(key)) {
        return singleItemCountController.addAll({key: 1});
      }
    });
  }
}
