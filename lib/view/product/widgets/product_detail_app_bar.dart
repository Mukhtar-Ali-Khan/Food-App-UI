import 'package:flutter/material.dart';
import '../../../res/colors/app_colors.dart';
import '../../cart/cart_view.dart';

class ProductDetailAppBar {
  static PreferredSizeWidget productDetailAppBar(BuildContext context) {
    return AppBar(
      leading: InkWell(
        onTap: () => Navigator.of(context).pop(),
        child: Icon(
          Icons.arrow_back_ios,
          color: AppColors.lightBlack,
          size: 22,
        ),
      ),
      leadingWidth: 66,
      title: Align(
        alignment: Alignment.centerRight,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const CartView()));
          },
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Icon(
                Icons.shopping_basket,
                size: 25,
                color: AppColors.lightBlack,
              ),
              Positioned(
                top: 1,
                right: -5,
                child: Icon(
                  Icons.circle,
                  color: AppColors.yellow,
                  size: 14,
                ),
              )
            ],
          ),
        ),
      ),
      titleSpacing: 25,
      elevation: 0,
      backgroundColor: AppColors.whiteColor,
    );
  }
}
