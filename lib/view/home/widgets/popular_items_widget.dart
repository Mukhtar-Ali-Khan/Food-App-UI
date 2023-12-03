import 'package:flutter/material.dart';
import 'package:food_app_ui/model/product/product_model.dart';
import 'package:food_app_ui/res/dummy%20data/dummy_data.dart';
import 'package:food_app_ui/utils/utils.dart';
import 'package:food_app_ui/view/product/product_view.dart';
import '../../../res/colors/app_colors.dart';
import '../../../res/text styles/app_text_styles.dart';

class PopularItemsWidget extends StatelessWidget {
  const PopularItemsWidget(
      {Key? key, required this.productModel, this.imageHeight = 100})
      : super(key: key);

  final ProductModel productModel;
  final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductView(model: productModel)));
          },
          child: Container(
            width: 180,
            height: 220,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(12),
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
                    offset: const Offset(-3.0, -3.0))
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.shopping_basket,
                      size: 16,
                      color: AppColors.yellow,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      'Top of the week',
                      style: AppTextStyles.bodySmall(fontSize: 10),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  productModel.productName,
                  style: AppTextStyles.bodyHeading(
                      fontSize: 16.0, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(
                  productModel.description,
                  style: AppTextStyles.bodySmall(
                      fontSize: 10.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 14),
                Text(
                  '\$${productModel.price}',
                  style: AppTextStyles.bodyHeading(
                      fontSize: 16.0, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 14),
                InkWell(
                  onTap: () {
                   Utils.addToCart(productModel);
                  },
                  child: Container(
                    width: 140,
                    height: 30,
                    padding: const EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.yellow,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.shopping_basket,
                          size: 14,
                          color: AppColors.blackColor,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Add to Cart',
                          style: AppTextStyles.bodySmall(
                              fontSize: 10, fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: -30,
          child: Image.asset(
            productModel.image,
            height: imageHeight,
            width: 100,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: Icon(
            Icons.favorite_border,
            size: 22,
            color: AppColors.lightBlack,
          ),
        ),
      ],
    );
  }
}
