import 'package:food_app_ui/model/category/category_model.dart';
import 'package:food_app_ui/model/product/product_model.dart';
import 'package:food_app_ui/res/assets/app_assets.dart';

class DummyData {
  static List<ProductModel> cartItems = [];

  static List<CategoryModel> categoryList = <CategoryModel>[
    CategoryModel(name: 'Pizza', image: AppAssets.pizza),
    CategoryModel(name: 'Burger', image: AppAssets.burger),
    CategoryModel(name: 'Drinks', image: AppAssets.drink),
    CategoryModel(name: 'Dessert', image: AppAssets.dessert),
    CategoryModel(name: 'Hot Wings', image: AppAssets.wing),
  ];

  // Exclusive offers
  static List<ProductModel> exclusiveOfferList = <ProductModel>[
    ProductModel(
        productName: 'productName',
        description: 'Mixed with cheese',
        price: '100',
        image: AppAssets.offer),
    ProductModel(
        productName: 'productName',
        description: 'Mixed with cheese',
        price: '100',
        image: AppAssets.offer1),
    ProductModel(
        productName: 'productName',
        description: 'Mixed with cheese',
        price: '100',
        image: AppAssets.offer2),
    ProductModel(
        productName: 'productName',
        description: 'Mixed with cheese',
        price: '100',
        image: AppAssets.offer3),
    ProductModel(
        productName: 'productName',
        description: 'Mixed with cheese',
        price: '100',
        image: AppAssets.offer4),
    ProductModel(
        productName: 'productName',
        description: 'Mixed with cheese',
        price: '100',
        image: AppAssets.offer5),
  ];

  // pizza list
  static List<ProductModel> pizzaList = [
    ProductModel(
        productName: 'Hot Spicy Pizza',
        description: 'Mixed with cheese',
        price: '8.0',
        image: AppAssets.pizza1),
    ProductModel(
        productName: 'Vegetable Pizza',
        description: 'Mixed with cheese',
        price: '9.0',
        image: AppAssets.pizza2),
    ProductModel(
        productName: 'Jalapeno Pizza',
        description: 'Mixed with cheese',
        price: '10.0',
        image: AppAssets.pizza3),
  ];

  // Drinks list
  static List<ProductModel> drinksList = [
    ProductModel(
        productName: 'Pepsi',
        description: 'Cold Drinks',
        price: '3.0',
        image: AppAssets.drink1),
    ProductModel(
        productName: 'Coca Cola',
        description: 'Cold Drinks',
        price: '3.0',
        image: AppAssets.offer5),
    ProductModel(
        productName: 'Mint Margarita',
        description: 'Cold Drinks',
        price: '4.0',
        image: AppAssets.drink3),
    ProductModel(
        productName: 'Sprite',
        description: 'Cold Drinks',
        price: '3.5',
        image: AppAssets.drink4),
  ];

  // pizza list
  static List<ProductModel> burgerList = [
    ProductModel(
        productName: 'Zinger Burger',
        description: 'Mixed with cheese',
        price: '8.0',
        image: AppAssets.burger1),
    ProductModel(
        productName: 'Vegetable Pizza',
        description: 'Mixed with cheese',
        price: '9.0',
        image: AppAssets.burger2),
    ProductModel(
        productName: 'Fish Burger',
        description: 'Mixed with cheese',
        price: '10.0',
        image: AppAssets.burger3),
    ProductModel(
        productName: 'Chicken Patty Burger',
        description: 'Mixed with cheese',
        price: '10.0',
        image: AppAssets.burger4),
  ];

  // pizza list
  static List<ProductModel> wingsList = [
    ProductModel(
        productName: '2 Hot Wings',
        description: 'Chicken Legs',
        price: '8.0',
        image: AppAssets.wing1),
    ProductModel(
        productName: '5 Hot Wings',
        description: 'Chicken Legs',
        price: '9.0',
        image: AppAssets.wing2),
    ProductModel(
        productName: '7 Hot Wings',
        description: 'Chicken Legs',
        price: '10.0',
        image: AppAssets.wing3),
    ProductModel(
        productName: '8 Hot Wings',
        description: 'Chicken Legs',
        price: '10.0',
        image: AppAssets.wing4),
    ProductModel(
        productName: '6 Hot Wings',
        description: 'Chicken Legs',
        price: '10.0',
        image: AppAssets.wing5),
  ];

  // pizza list
  static List<ProductModel> dessertList = [
    ProductModel(
        productName: 'Cakes',
        description: 'Ice Cream',
        price: '8.0',
        image: AppAssets.dessert1),
    ProductModel(
        productName: 'Cupcakes',
        description: 'Ice Cream',
        price: '8.0',
        image: AppAssets.dessert2),
    ProductModel(
        productName: 'Brownies',
        description: 'Ice Cream',
        price: '8.0',
        image: AppAssets.dessert3),
    ProductModel(
        productName: 'Muffins',
        description: 'Ice Cream',
        price: '8.0',
        image: AppAssets.dessert4),
    ProductModel(
        productName: 'Cheesecakes',
        description: 'Ice Cream',
        price: '8.0',
        image: AppAssets.dessert5),
    ProductModel(
        productName: 'Cookies',
        description: 'Ice Cream',
        price: '8.0',
        image: AppAssets.dessert6),
    ProductModel(
        productName: 'Candies',
        description: 'Ice Cream',
        price: '8.0',
        image: AppAssets.dessert7),
  ];

  // Best Restaurants
  static List<String> restaurantsList = [
    AppAssets.res1,
    AppAssets.res2,
    AppAssets.res3,
    AppAssets.res4,
  ];

  // Recommended Items
  static List<ProductModel> recommendedList = [
    ProductModel(
        productName: 'Cupcakes',
        description: 'Ice Cream',
        price: '8.0',
        image: AppAssets.dessert2),
    ProductModel(
        productName: '8 Hot Wings',
        description: 'Chicken Legs',
        price: '10.0',
        image: AppAssets.wing4),
    ProductModel(
        productName: 'Fish Burger',
        description: 'Mixed with cheese',
        price: '10.0',
        image: AppAssets.burger3),
    ProductModel(
        productName: 'Vegetable Pizza',
        description: 'Mixed with cheese',
        price: '9.0',
        image: AppAssets.burger2),
    ProductModel(
        productName: 'Mint Margarita',
        description: 'Cold Drinks',
        price: '4.0',
        image: AppAssets.drink3),
    ProductModel(
        productName: 'Vegetable Pizza',
        description: 'Mixed with cheese',
        price: '9.0',
        image: AppAssets.pizza2),
  ];
}
