import 'package:test_pragma/feature/landing/domain/entities/cat.dart';

abstract class SearchCatRepository {
  Future<List<String>> searchCatImage();
}
