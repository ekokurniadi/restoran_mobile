import 'package:get_it/get_it.dart';
import 'package:restoran_mobile/core/helpers/dio_helper.dart';
import 'package:restoran_mobile/features/products/data/datasources/remote/product_remote_datasource.dart';
import 'package:restoran_mobile/features/products/data/datasources/remote/product_remote_datasource_impl.dart';
import 'package:restoran_mobile/features/products/data/repositories_impl/product_repository_impl.dart';
import 'package:restoran_mobile/features/products/domain/repositories/product_repository.dart';
import 'package:restoran_mobile/features/products/domain/usecases/get_all_data_product.dart';
import 'package:restoran_mobile/features/products/presentations/bloc/product_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<ProductRemoteDataSource>(
    () => ProductRemoteDataSourceImpl(DioHelper.dio!),
  );

  sl.registerLazySingleton<ProductRepository>(
    () => ProductRepositoryImpl(sl()),
  );

  sl.registerLazySingleton<GetAllDataProductUseCases>(
    () => GetAllDataProductUseCases(sl()),
  );

  sl.registerFactory(
    () => ProductBloc(sl()),
  );
}
