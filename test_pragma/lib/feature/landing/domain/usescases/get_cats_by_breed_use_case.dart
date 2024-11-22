import 'package:test_pragma/feature/landing/domain/entities/cat.dart';
import 'package:test_pragma/feature/landing/domain/repositories/cat_repository.dart';

class GetCatsByBreedUseCase {
  final CatRepository repository;

  GetCatsByBreedUseCase(this.repository);

  Future<List<Cat>> call(String breed) async {
    return await repository.getCatsByBreed(breed);
  }
}
