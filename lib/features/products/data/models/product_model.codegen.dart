import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.codegen.freezed.dart';
part 'product_model.codegen.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String productCode,
    required int categoryId,
    required String categoryName,
    required String productImage,
    required int isActive,
    required int isHaveStock,
    required String createdAt,
    required String updatedAt,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

/* 
Perintah untuk melakukan generate class model menggunakan freezed
dan build runner
flutter pub run build_runner build --delete-conflicting-outputs
*/
