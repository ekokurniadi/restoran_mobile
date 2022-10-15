import 'package:restoran_mobile/features/products/data/datasources/remote/product_remote_datasource.dart';
import 'package:restoran_mobile/features/products/data/models/product_model.codegen.dart';
import 'package:restoran_mobile/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:restoran_mobile/features/products/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  const ProductRepositoryImpl(this._productRemoteDataSource);
  final ProductRemoteDataSource _productRemoteDataSource;

  @override
  Future<Either<Failure, List<ProductModel>>> getAllDataProduct() async {
    return await _productRemoteDataSource.getAllDataProduct();
  }
}
