import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_pragma/app/network/dio/dio_client.dart';
import 'package:test_pragma/app/network/dio/dio_exception.dart';
import 'package:test_pragma/feature/landing/data/models/cat_model.dart';

abstract class CatRemoteDataSource {
  Future<List<CatModel>> getCatsByBreed(String breed);
}

class CatRemoteDataSourceImpl implements CatRemoteDataSource {
  CatRemoteDataSourceImpl();

  @override
  Future<List<CatModel>> getCatsByBreed(String breed) async {
    try {
      final response = await DioClient.instance
          .get('https://api.thecatapi.com/v1/breeds?search=$breed');
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.data);
        return data.map((json) => CatModel.fromJson(json)).toList();
      } else {
        throw Exception('Error al cargar los gatos');
      }
    } on DioException catch (e) {
      var error = DioExceptionError.fromDioError(e);
      throw error.errorMessage;
    }
    // final response = await client.get(
    //   Uri.parse('https://api.thecatapi.com/v1/breeds?search=$breed'),
    //   headers: {
    //     'x-api-key':
    //         'ADUu1a2menRK2yvhRBsxv8eheEFZhs9XcNVxMfDDCGNAGGbyT0aWDAFPAZuA3Aoz',
    //   },
    // );

    // if (response.statusCode == 200) {
    //   List<dynamic> data = json.decode(response.body);
    //   return data.map((json) => CatModel.fromJson(json)).toList();
    // } else {
    //   throw Exception('Error al cargar los gatos');
    // }
  }
}
