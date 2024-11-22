import 'package:test_pragma/feature/landing/data/datasources/search_remote_datasourse.dart';
import 'package:test_pragma/feature/landing/domain/repositories/search_cat_respository.dart';

class SearchCatRepositoryImpl extends SearchCatRepository {
  final SearchCatRemoteDataSource remoteDataSource;

  SearchCatRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<String>> searchCatImage() {
    return remoteDataSource.searchCatsImages();
  }
}
