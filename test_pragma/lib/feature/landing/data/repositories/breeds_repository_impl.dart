import 'package:test_pragma/feature/landing/data/datasources/breeds_remote_datasource.dart';
import 'package:test_pragma/feature/landing/domain/entities/cat.dart';
import 'package:test_pragma/feature/landing/domain/repositories/breeds_repository.dart';

class BreedsRepositoryImpl implements BreedsRepository {
  final BreedsRemoteDataSource remoteDataSource;

  BreedsRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Cat>> getBreeds() async {
    final cats = await remoteDataSource.getBreeds();

    return cats
        .map((cat) => Cat(
              name: cat.name,
              origin: cat.origin,
              intelligence: cat.intelligence,
              imageUrl:
                  'https://cdn2.thecatapi.com/images/${cat.referenceImageId}.jpg',
              description: cat.description,
            ))
        .toList();
  }
}
