import 'package:dartz/dartz.dart';
import 'package:restoran_mobile/core/error/failure.dart';
import 'package:restoran_mobile/features/products/data/models/product_model.codegen.dart';

abstract class ProductRepository{
  Future<Either<Failure,List<ProductModel>>>getAllDataProduct();
}