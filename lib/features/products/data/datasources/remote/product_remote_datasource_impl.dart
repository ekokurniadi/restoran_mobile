import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:restoran_mobile/core/error/failure.dart';
import 'package:restoran_mobile/core/helpers/constant_helper.dart';
import 'package:restoran_mobile/features/products/data/datasources/remote/product_remote_datasource.dart';
import 'package:restoran_mobile/features/products/data/models/product_model.codegen.dart';


class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  const ProductRemoteDataSourceImpl(this._dio);
  final Dio _dio;
  @override
  Future<Either<Failure, List<ProductModel>>> getAllDataProduct() async {
    try {
      final response = await _dio.get(ConstantHelper.URL_PRODUCT);
      final listOfProduct = <ProductModel>[];
      for (final product in response.data['data']) {
        listOfProduct.add(ProductModel.fromJson(product));
      }
      return right(listOfProduct);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }
}
