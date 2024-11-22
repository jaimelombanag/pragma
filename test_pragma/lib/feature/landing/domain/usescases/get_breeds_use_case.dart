import 'package:test_pragma/feature/landing/domain/entities/cat.dart';
import 'package:test_pragma/feature/landing/domain/repositories/breeds_repository.dart';

class GetBreedsUseCase {
  final BreedsRepository repository;

  GetBreedsUseCase(this.repository);

  Future<List<Cat>> call() async {
    return await repository.getBreeds();
  }
}
