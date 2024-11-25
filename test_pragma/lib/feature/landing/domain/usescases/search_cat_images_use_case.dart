import 'package:test_pragma/feature/landing/domain/entities/cat.dart';
import 'package:test_pragma/feature/landing/domain/repositories/search_cat_respository.dart';

class SearchCatImagesUseCase {
  final SearchCatRepository repository;

  SearchCatImagesUseCase(this.repository);

  Future<List<String>> searchCat() async {
    return await repository.searchCatImage();
  }
}
