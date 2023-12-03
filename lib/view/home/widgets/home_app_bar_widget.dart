import 'package:flutter/material.dart';
import 'package:food_app_ui/res/button/custom_button.dart';
import 'package:food_app_ui/view/cart/cart_view.dart';
import 'package:food_app_ui/view/product/widgets/product_buttons.dart';
import '../../../res/assets/app_assets.dart';
import '../../../res/colors/app_colors.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            AppAssets.menu,
            height: 43,
            width: 43,
            fit: BoxFit.fill,
          ),
        ),
        const Spacer(),
        ProductButtons(
            widget: Stack(
              alignment: Alignment.topRight,
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
            buttonColor: AppColors.lightGray,
            onPress: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const CartView()));
            }),
        const SizedBox(width: 14),
        Container(
          height: 45,
          width: 45,
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(AppAssets.profile), fit: BoxFit.fill),
          ),
        )
      ],
    );
  }
}
