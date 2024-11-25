import 'package:test_pragma/feature/landing/data/datasources/cat_remote_datasource.dart';
import 'package:test_pragma/feature/landing/domain/entities/cat.dart';
import 'package:test_pragma/feature/landing/domain/repositories/get_cat_respository.dart';

class GetCatRepositoryImpl extends GetCatRepository {
  final GetCatsRemoteDataSource remoteDataSource;

  GetCatRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Cat>> getCats() async {
    final cats = await remoteDataSource.getCats();
    return cats
        .map((cat) => Cat(
              name: cat.breeds!.first.name,
              origin: cat.breeds!.first.origin,
              intelligence: cat.breeds!.first.intelligence,
              imageUrl: cat.url,
              description: cat.breeds!.first.description,
              wikipediaUrl: cat.breeds!.first.wikipediaUrl,
              energyLevel: cat.breeds!.first.energyLevel,
              lifeSpan: cat.breeds!.first.lifeSpan,
              temperament: cat.breeds!.first.temperament,
            ))
        .toList();
  }
}
