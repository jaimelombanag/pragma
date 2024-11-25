import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_pragma/app/network/dio/dio_client.dart';
import 'package:test_pragma/app/network/dio/dio_exception.dart';
import 'package:test_pragma/feature/landing/data/models/response_cats.dart';
import 'package:test_pragma/global/utils/constants.dart';

abstract class GetCatsRemoteDataSource {
  Future<List<ResponseCats>> getCats();
}

class GetCatsRemoteDataSourceImpl implements GetCatsRemoteDataSource {
  GetCatsRemoteDataSourceImpl();

  @override
  Future<List<ResponseCats>> getCats() async {
    try {
      var url =
          '${Constants.urlBaseApi}images/${Constants.search}?has_breeds=true&limit=100';
      debugPrint('ApiUrl: $url');
      final response = await DioClient.instance.get(url);
      if (response.statusCode == 200) {
        List<ResponseCats> cats = (response.data as List)
            .map((catJson) => ResponseCats.fromJson(catJson))
            .toList();

        return cats;
      } else {
        throw Exception(Constants.errorUpload);
      }
    } on DioException catch (e) {
      var error = DioExceptionError.fromDioError(e);
      debugPrint('Error: $error');
      throw error.errorMessage;
    }
  }
}
