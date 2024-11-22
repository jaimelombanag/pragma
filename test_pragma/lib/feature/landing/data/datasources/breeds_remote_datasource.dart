import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:test_pragma/app/network/dio/dio_client.dart';
import 'package:test_pragma/app/network/dio/dio_exception.dart';
import 'package:test_pragma/feature/landing/data/models/response_breeds.dart';

abstract class BreedsRemoteDataSource {
  Future<List<ResponseBreeds>> getBreeds();
}

class BreedsRemoteDataSourceImpl implements BreedsRemoteDataSource {
  BreedsRemoteDataSourceImpl();

  @override
  Future<List<ResponseBreeds>> getBreeds() async {
    try {
      final response =
          await DioClient.instance.get('https://api.thecatapi.com/v1/breeds');
      if (response.statusCode == 200) {
        List<ResponseBreeds> breeds = (response.data as List)
            .map((breedJson) => ResponseBreeds.fromJson(breedJson))
            .toList();

        return breeds;
      } else {
        throw Exception('Error al cargar los gatos');
      }
    } on DioException catch (e) {
      var error = DioExceptionError.fromDioError(e);
      throw error.errorMessage;
    }
  }
}
