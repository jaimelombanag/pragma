import 'package:test_pragma/feature/landing/domain/entities/cat.dart';

abstract class GetCatRepository {
  Future<List<Cat>> getCats();
}
