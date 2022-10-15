import 'package:dartz/dartz.dart';
import 'package:restoran_mobile/core/error/failure.dart';
import 'package:restoran_mobile/features/products/data/models/product_model.codegen.dart';

abstract class ProductRemoteDataSource {
  /* Either => berfungsi untuk menyimpan nilai error dan juga data
    yang didapat dari server, 
    1. variable sebelah kiri akan menyimpan nilai error
    2. variabel sebelah kanan akan menyimpan data product
   */
  Future<Either<Failure, List<ProductModel>>> getAllDataProduct();
}
