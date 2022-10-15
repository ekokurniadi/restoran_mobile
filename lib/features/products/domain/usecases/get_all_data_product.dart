import 'package:dartz/dartz.dart';
import 'package:restoran_mobile/core/error/failure.dart';
import 'package:restoran_mobile/features/products/data/models/product_model.codegen.dart';
import 'package:restoran_mobile/features/products/domain/repositories/product_repository.dart';

class GetAllDataProductUseCases {
  const GetAllDataProductUseCases(this._productRepository);
  final ProductRepository _productRepository;

  Future<Either<Failure, List<ProductModel>>> call() async {
    return await _productRepository.getAllDataProduct();
  }
}
