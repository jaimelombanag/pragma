import 'package:test_pragma/feature/landing/data/datasources/car_remote_datasource.dart';
import 'package:test_pragma/feature/landing/domain/entities/cat.dart';
import 'package:test_pragma/feature/landing/domain/repositories/cat_repository.dart';

class CatRepositoryImpl implements CatRepository {
  final CatRemoteDataSource remoteDataSource;

  CatRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Cat>> getCatsByBreed(String breed) async {
    final cats = await remoteDataSource.getCatsByBreed(breed);
    return cats
        .map((cat) => Cat(
              name: cat.name,
              origin: cat.origin,
              intelligence: 2,
              imageUrl: cat.imageUrl,
              description: cat.description,
            ))
        .toList();
  }
}
