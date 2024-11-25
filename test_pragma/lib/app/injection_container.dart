import 'package:get_it/get_it.dart';
import 'package:test_pragma/feature/landing/data/datasources/breeds_remote_datasource.dart';
import 'package:test_pragma/feature/landing/data/datasources/cat_remote_datasource.dart';
import 'package:test_pragma/feature/landing/data/repositories/breeds_repository_impl.dart';
import 'package:test_pragma/feature/landing/data/repositories/get_cat_repository_impl.dart';
import 'package:test_pragma/feature/landing/domain/repositories/breeds_repository.dart';
import 'package:test_pragma/feature/landing/domain/repositories/get_cat_respository.dart';
import 'package:test_pragma/feature/landing/domain/usescases/get_breeds_use_case.dart';

import 'package:test_pragma/feature/landing/domain/usescases/get_cat_use_case.dart';

final GetIt getIt = GetIt.instance;

void setupDependencies() {
  //Data Sources
  getIt.registerLazySingleton<GetCatsRemoteDataSource>(
    () => GetCatsRemoteDataSourceImpl(),
  );
  getIt.registerLazySingleton<BreedsRemoteDataSource>(
    () => BreedsRemoteDataSourceImpl(),
  );

  // Registro de Repositorios

  getIt.registerLazySingleton<GetCatRepository>(
    () => GetCatRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<BreedsRepository>(
    () => BreedsRepositoryImpl(getIt()),
  );

  // Registro de Casos de Uso
  getIt.registerLazySingleton(() => GetCatUseCase(getIt()));
  getIt.registerLazySingleton(() => GetBreedsUseCase(getIt()));
}
