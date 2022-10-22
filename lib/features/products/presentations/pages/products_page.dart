import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:restoran_mobile/core/helpers/theme_helper.dart';
import 'package:restoran_mobile/core/helpers/toast_helper.dart';
import 'package:restoran_mobile/features/products/presentations/bloc/product_bloc.dart';
import 'package:restoran_mobile/features/products/presentations/widgets/product_item.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: MediaQuery.of(context).size.height,
      child: BlocListener<ProductBloc, ProductState>(
        listener: (context, state) {
          if (state.status == ProductStatus.error) {
            ToastHelper.toastError(state.errorMessage);
          }
        },
        child: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state.status == ProductStatus.initial) {
              context.read<ProductBloc>().add(const GetAllDataProduct());
            }
            return state.status == ProductStatus.loading
                ? Center(
                    child: SpinKitCircle(color: ThemeHelper.primaryColor),
                  )
                : GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                    itemCount: state.listProduct.length,
                    itemBuilder: (context, index) {
                      return ProductItem(
                        state.listProduct[index],
                      );
                    },
                  );
          },
        ),
      ),
    );
  }
}
