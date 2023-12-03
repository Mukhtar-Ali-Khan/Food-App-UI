import 'package:flutter/material.dart';
import 'package:food_app_ui/model/product/product_model.dart';
import 'package:food_app_ui/res/button/custom_button.dart';
import 'package:food_app_ui/res/colors/app_colors.dart';
import 'package:food_app_ui/res/dummy%20data/dummy_data.dart';
import 'package:food_app_ui/view/product/widgets/product_buttons.dart';
import 'package:food_app_ui/view/product/widgets/product_detail_app_bar.dart';
import '../../res/text styles/app_text_styles.dart';
import '../../utils/utils.dart';
import '../cart/cart_view.dart';
import '../home/widgets/popular_items_widget.dart';

class ProductView extends StatefulWidget {
  const ProductView({Key? key, required this.model}) : super(key: key);

  final ProductModel model;

  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  String selectedSize = 'M';
  int itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: ProductDetailAppBar.productDetailAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.shopping_basket,
                  size: 18,
                  color: AppColors.yellow,
                ),
                const SizedBox(width: 3),
                Text(
                  'Top of the week',
                  style: AppTextStyles.bodySmall(fontSize: 12),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text(
              widget.model.productName,
              style: AppTextStyles.bodyHeading(
                  fontSize: 20.0, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              widget.model.description,
              style: AppTextStyles.bodySmall(
                  fontSize: 14.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // -------------------------------- Product Image
            Image.asset(
              widget.model.image,
              height: 250,
              width: 250,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 20),
            //----------------------------- Reviews , Like and share
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: AppColors.yellow,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '(100 Reviews)',
                    style: AppTextStyles.bodySmall(fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.favorite_border,
                      size: 28,
                      color: AppColors.red,
                    ),
                  ),
                  const SizedBox(width: 14),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.share_outlined,
                      size: 28,
                      color: AppColors.lightBlack,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // --------------------------------add, remove, shipping and timer
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  ProductButtons(
                      widget: Icon(
                        Icons.remove,
                        size: 26,
                        color: AppColors.lightBlack,
                      ),
                      buttonColor: AppColors.yellow,
                      onPress: () {
                        setState(() {
                          itemCount <= 1 ? itemCount : itemCount--;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      itemCount.toString(),
                      style: AppTextStyles.bodySmall(
                          fontWeight: FontWeight.w700, fontSize: 18.0),
                    ),
                  ),
                  ProductButtons(
                      widget: Icon(
                        Icons.add,
                        size: 26,
                        color: AppColors.lightBlack,
                      ),
                      buttonColor: AppColors.yellow,
                      onPress: () {
                        setState(() {
                          itemCount++;
                        });
                      }),
                  const Spacer(),
                  ProductButtons(
                      width: 100,
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.local_shipping_outlined,
                            color: AppColors.lightBlack,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Free',
                            style: AppTextStyles.bodySmall(),
                          )
                        ],
                      ),
                      buttonColor: AppColors.lightGray,
                      onPress: () {}),
                  const SizedBox(width: 14),
                  ProductButtons(
                      width: 100,
                      widget: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            color: AppColors.lightBlack,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '30 min',
                            style: AppTextStyles.bodySmall(),
                          )
                        ],
                      ),
                      buttonColor: AppColors.lightGray,
                      onPress: () {}),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // -------------------------------- Price and Product Size
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$ ${double.parse(widget.model.price) * itemCount}',
                    style: AppTextStyles.bodyHeading(),
                  ),
                  const Spacer(),
                  selectSize(size: 'S'),
                  const SizedBox(width: 12),
                  selectSize(size: 'M'),
                  const SizedBox(width: 12),
                  selectSize(size: 'L'),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // -------------------------------- Recommended Items
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recommended Items',
                  style: AppTextStyles.bodyHeading(),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: SizedBox(
                height: 270,
                child: ListView.separated(
                  itemCount: DummyData.recommendedList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 8)
                      .copyWith(top: 30, bottom: 8),
                  separatorBuilder: (context, child) =>
                      const SizedBox(width: 15),
                  itemBuilder: (context, index) {
                    return PopularItemsWidget(
                      productModel: DummyData.recommendedList[index],
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 25),
            CustomButton(
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.shopping_basket_outlined,
                      color: AppColors.lightBlack,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Add to Cart',
                      style: AppTextStyles.bodyHeading(
                          fontSize: 16, color: AppColors.lightBlack),
                    )
                  ],
                ),
                width: MediaQuery.of(context).size.width * 0.8,
                onPress: () {
                  Utils.addToCart(widget.model);
                }),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  selectSize({required String size}) {
    return ProductButtons(
        widget: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            size,
            style: AppTextStyles.bodySmall(
                fontWeight: FontWeight.w800, fontSize: 18.0),
          ),
        ),
        buttonColor:
            selectedSize == size ? AppColors.yellow : AppColors.lightGray,
        onPress: () {
          setState(() {
            selectedSize = size;
          });
        });
  }
}
