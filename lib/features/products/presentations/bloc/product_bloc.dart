import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restoran_mobile/features/products/data/models/product_model.codegen.dart';
import 'package:restoran_mobile/features/products/domain/usecases/get_all_data_product.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetAllDataProductUseCases _getAllDataProductUseCases;
  ProductBloc(
    this._getAllDataProductUseCases,
  ) : super(ProductState.initial()) {
    on<GetAllDataProduct>(_getAllDataProduct);
  }

  FutureOr<void> _getAllDataProduct(
    GetAllDataProduct event,
    Emitter emit,
  ) async {
    emit(state.copyWith(status: ProductStatus.loading));
    final result = await _getAllDataProductUseCases();

    result.fold((l) {
      // jika error emit state ke status error dan tampilkan pesan error
      emit(state.copyWith(
        status: ProductStatus.error,
        errorMessage: l.errorMessage,
      ));

    }, (r) {
      // jika berhasil emit state ke status success dan tampilkan daftar product
      emit(state.copyWith(
        status: ProductStatus.success,
        listProduct: r,
      ));
      
    });
  }
}
