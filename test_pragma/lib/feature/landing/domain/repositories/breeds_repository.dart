import 'package:test_pragma/feature/landing/domain/entities/cat.dart';

abstract class BreedsRepository {
  Future<List<Cat>> getBreeds();
}
