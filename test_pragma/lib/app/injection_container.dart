import 'package:get_it/get_it.dart';
import 'package:test_pragma/feature/landing/data/datasources/breeds_remote_datasource.dart';
import 'package:test_pragma/feature/landing/data/datasources/car_remote_datasource.dart';
import 'package:test_pragma/feature/landing/data/datasources/search_remote_datasourse.dart';
import 'package:test_pragma/feature/landing/data/repositories/breeds_repository_impl.dart';
import 'package:test_pragma/feature/landing/data/repositories/cat_repository_impl.dart';
import 'package:test_pragma/feature/landing/data/repositories/search_cat_repository_impl.dart';
import 'package:test_pragma/feature/landing/domain/repositories/breeds_repository.dart';
import 'package:test_pragma/feature/landing/domain/repositories/cat_repository.dart';
import 'package:test_pragma/feature/landing/domain/repositories/search_cat_respository.dart';
import 'package:test_pragma/feature/landing/domain/usescases/get_breeds_use_case.dart';
import 'package:test_pragma/feature/landing/domain/usescases/get_cats_by_breed_use_case.dart';
import 'package:test_pragma/feature/landing/domain/usescases/search_cat_images_use_case.dart';

final GetIt getIt = GetIt.instance;

void setupDependencies() {
  //Data Sources
  getIt.registerLazySingleton<CatRemoteDataSource>(
    () => CatRemoteDataSourceImpl(),
  );
  getIt.registerLazySingleton<SearchCatRemoteDataSource>(
    () => SearchCatRemoteDataSourceImpl(),
  );
  getIt.registerLazySingleton<BreedsRemoteDataSource>(
    () => BreedsRemoteDataSourceImpl(),
  );

  // Registro de Repositorios
  getIt.registerLazySingleton<CatRepository>(
    () => CatRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<SearchCatRepository>(
    () => SearchCatRepositoryImpl(getIt()),
  );
  getIt.registerLazySingleton<BreedsRepository>(
    () => BreedsRepositoryImpl(getIt()),
  );

  // Registro de Casos de Uso
  getIt.registerLazySingleton(() => GetCatsByBreedUseCase(getIt()));
  getIt.registerLazySingleton(() => SearchCatImagesUseCase(getIt()));
  getIt.registerLazySingleton(() => GetBreedsUseCase(getIt()));
}
