// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'product_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      id: json['id'] as int,
      productCode: json['product_code'] as String,
      productName: json['product_name'] as String,
      categoryId: json['category_id'] as int,
      categoryName: json['category_name'] as String,
      productImage: json['product_image'] as String,
      isActive: json['is_active'] as int,
      isHaveStock: json['is_have_stock'] as int,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_code': instance.productCode,
      'product_name': instance.productName,
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'product_image': instance.productImage,
      'is_active': instance.isActive,
      'is_have_stock': instance.isHaveStock,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
