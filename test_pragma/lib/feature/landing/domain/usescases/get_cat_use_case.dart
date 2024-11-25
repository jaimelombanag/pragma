import 'package:test_pragma/feature/landing/domain/entities/cat.dart';
import 'package:test_pragma/feature/landing/domain/repositories/get_cat_respository.dart';

class GetCatUseCase {
  final GetCatRepository repository;

  GetCatUseCase(this.repository);

  Future<List<Cat>> getCats() async {
    return await repository.getCats();
  }
}
