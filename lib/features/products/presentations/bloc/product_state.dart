part of 'product_bloc.dart';

enum ProductStatus {initial,loading,success,error}

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    required ProductStatus status,
    required List<ProductModel> listProduct,
    required String errorMessage,
  }) = _ProductState;
  
   factory ProductState.initial() => const ProductState(
    status:ProductStatus.initial,
    listProduct:[],
    errorMessage:''
   );
}
