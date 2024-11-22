import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:test_pragma/app/network/dio/dio_client.dart';
import 'package:test_pragma/app/network/dio/dio_exception.dart';
import 'package:test_pragma/feature/landing/data/models/cat_model.dart';

abstract class SearchCatRemoteDataSource {
  Future<List<String>> searchCatsImages();
}

class SearchCatRemoteDataSourceImpl implements SearchCatRemoteDataSource {
  SearchCatRemoteDataSourceImpl();

  @override
  Future<List<String>> searchCatsImages({
    int limit = 10,
    String? breedId, // Agregar ID de raza como filtro
  }) async {
    final queryParams = {
      'limit': '$limit',
      if (breedId != null) 'breed_ids': breedId,
    };
    try {
      final response = await DioClient.instance.get(
          'https://api.thecatapi.com/v1/images/search',
          queryParameters: queryParams);
      if (response.statusCode == 200) {
        final List data = jsonDecode(response.data);
        return data.map<String>((cat) => cat['url'] as String).toList();
      } else {
        throw Exception('Error al realizar la búsqueda');
      }
    } on DioException catch (e) {
      var error = DioExceptionError.fromDioError(e);
      throw error.errorMessage;
    }
  }
}
