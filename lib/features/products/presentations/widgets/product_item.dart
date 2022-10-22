import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:restoran_mobile/core/helpers/theme_helper.dart';
import 'package:restoran_mobile/features/products/data/models/product_model.codegen.dart';
import 'package:restoran_mobile/features/products/presentations/widgets/empty_image.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class ProductItem extends StatelessWidget {
  final ProductModel _productModel;
  const ProductItem(this._productModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {},
      child: Card(
        elevation: 1,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 100,
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional.center,
                      child: Image.asset(
                        'assets/images/no-image.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 9, 31, 10)
                            .withOpacity(0.5),
                      ),
                    ),
                    CachedNetworkImage(
                      imageUrl: _productModel.productImage,
                      fit: BoxFit.cover,
                      progressIndicatorBuilder: (context, url, progress) {
                        return Center(
                          child: SpinKitCircle(color: ThemeHelper.primaryColor),
                        );
                      },
                      errorWidget: ((context, url, error) {
                        return EmptyImage(_productModel.productName);
                      }),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding:const EdgeInsets.only(left:10,right: 10),
                child: Text(
                  _productModel.productName,
                  overflow: TextOverflow.ellipsis,
                  style: ThemeHelper.mediumTextStyle.copyWith(
                    color: ThemeHelper.primaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
              Text(_productModel.categoryName,
              style: ThemeHelper.mediumTextStyle.copyWith(
                    color: ThemeHelper.blackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
