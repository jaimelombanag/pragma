import 'package:test_pragma/feature/landing/domain/entities/cat.dart';

abstract class CatRepository {
  Future<List<Cat>> getCatsByBreed(String breed);
}
