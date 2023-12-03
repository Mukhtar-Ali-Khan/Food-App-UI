import 'package:flutter/material.dart';
import 'package:food_app_ui/res/assets/app_assets.dart';
import 'package:food_app_ui/res/button/custom_button.dart';
import 'package:food_app_ui/res/colors/app_colors.dart';
import 'package:food_app_ui/res/dummy%20data/dummy_data.dart';
import 'package:food_app_ui/res/text%20styles/app_text_styles.dart';
import 'package:food_app_ui/view%20model/cart/cart_view_model.dart';
import 'package:food_app_ui/view/cart/widget/order_details.dart';
import 'package:food_app_ui/view/product/widgets/product_buttons.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  void initState() {
    super.initState();
    CartViewModel.singleItemCount();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 80,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back_ios,
            color: AppColors.lightBlack,
            size: 22,
          ),
        ),
        leadingWidth: 65,
        title: Text(
          'Cart',
          style: AppTextStyles.bodyHeading(
              color: AppColors.lightBlack, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: AppColors.lightBlack,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.5,
            child: ListView.separated(
                itemCount: CartViewModel.cartItems.length,
                shrinkWrap: true,
                separatorBuilder: (context, child) =>
                    const SizedBox(height: 20),
                padding: const EdgeInsets.symmetric(vertical: 14),
                itemBuilder: (context, index) {
                  final item = CartViewModel.cartItems[index];
                  return Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.lightGray,
                            spreadRadius: 4.0,
                            blurRadius: 3.0,
                            offset: const Offset(3.0, 3.0)),
                        BoxShadow(
                            color: AppColors.lightGray,
                            spreadRadius: 4.0,
                            blurRadius: 3.0,
                            offset: const Offset(-3.0, -3.0)),
                      ],
                    ),
                    child: Row(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            const SizedBox(
                              width: 100,
                              height: 90,
                            ),
                            Positioned(
                              top: -20,
                              child: Image.asset(
                                item.image,
                                height: 90,
                                width: 85,
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    item.productName,
                                    style: AppTextStyles.bodyHeading(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                  Text('\$${item.price}',
                                      style: AppTextStyles.bodyHeading(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16))
                                ],
                              ),
                              const SizedBox(height: 5),
                              Text(
                                item.description,
                                style: AppTextStyles.bodySmall(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: AppColors.orange,
                                  ),
                                  const SizedBox(width: 6),
                                  Text(
                                    '(12 Reviews)',
                                    style: AppTextStyles.bodySmall(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10),
                                  ),
                                  const Spacer(),
                                  ProductButtons(
                                    width: 38,
                                    height: 25,
                                    widget: Icon(
                                      Icons.remove,
                                      size: 18,
                                      color: AppColors.lightBlack,
                                    ),
                                    buttonColor: AppColors.yellow,
                                    onPress: () {
                                      setState(() {
                                        CartViewModel.singleItemCountController
                                            .update(index, (value) {
                                          if (value > 1) {
                                            CartViewModel.subtractItemPrice(
                                                item.price);
                                            return value - 1;
                                          } else {
                                            return value;
                                          }
                                        });
                                      });
                                    },
                                  ),
                                  const SizedBox(width: 8),
                                  Text(
                                      CartViewModel.singleItemCountController[
                                                  index] ==
                                              null
                                          ? '0'
                                          : CartViewModel
                                              .singleItemCountController[index]
                                              .toString(),
                                      style: AppTextStyles.bodyHeading(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16)),
                                  const SizedBox(width: 8),
                                  ProductButtons(
                                    width: 38,
                                    height: 25,
                                    widget: Icon(
                                      Icons.add,
                                      size: 18,
                                      color: AppColors.lightBlack,
                                    ),
                                    buttonColor: AppColors.yellow,
                                    onPress: () {
                                      setState(() {
                                        CartViewModel.singleItemCountController
                                            .update(index, (value) {
                                          CartViewModel.addToItemTotal(
                                              item.price);
                                          return value + 1;
                                        });
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          // ----------------------------- Order details
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25)
                  .copyWith(top: 35, bottom: 30),
              decoration: BoxDecoration(
                color: AppColors.lightGray,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  OrderDetails(
                      leading: 'Items Total',
                      trailing: CartViewModel.itemTotal.toString()),
                  const SizedBox(height: 12),
                  const OrderDetails(
                      leading: 'Delivery Charges', trailing: '2.0'),
                  const SizedBox(height: 12),
                  Divider(
                    color: AppColors.lightBlack,
                  ),
                  const SizedBox(height: 12),
                  OrderDetails(
                      isBold: true,
                      leading: 'Subtotals',
                      trailing: CartViewModel.subtotal.toString()),
                  const Spacer(),
                  CustomButton(
                      width: MediaQuery.of(context).size.width,
                      widget: Text(
                        'Place Order',
                        style: AppTextStyles.bodyHeading(
                            fontSize: 16.0, fontWeight: FontWeight.w700),
                      ),
                      onPress: () {})
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
