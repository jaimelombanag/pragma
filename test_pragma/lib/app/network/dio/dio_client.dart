import 'package:dio/dio.dart';
import 'package:test_pragma/app/network/dio/paths.dart';
import 'package:test_pragma/global/utils/constants.dart';

class DioClient {
  DioClient._();

  static final instance = DioClient._();

  final Dio _dio = Dio(BaseOptions(
      headers: {
        'x-api-key': Constants.xApiKey, // Header de autorización
        'Content-Type': Constants.contentType, // Tipo de contenido
        'Accept': Constants.accept, // Formato aceptado
      },
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: Constants.connectTimeout),
      receiveTimeout: const Duration(seconds: Constants.receiveTimeout),
      responseType: ResponseType.json));

  ///Get Method
  Future<Response> get(String path,
      {Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onReceiveProgress}) async {
    try {
      final Response response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      if (response.statusCode == 200) {
        return response;
      }
      throw "something went wrong";
    } catch (e) {
      rethrow;
    }
  }

  ///Post Method
  Future<Map<String, dynamic>> post(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress}) async {
    try {
      final Response response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data;
      }
      throw "something went wrong";
    } catch (e) {
      rethrow;
    }
  }

  ///Put Method
  Future<Map<String, dynamic>> put(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress}) async {
    try {
      final Response response = await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      if (response.statusCode == 200) {
        return response.data;
      }
      throw "something went wrong";
    } catch (e) {
      rethrow;
    }
  }

  ///Delete Method
  Future<dynamic> delete(String path,
      {data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      CancelToken? cancelToken,
      ProgressCallback? onSendProgress,
      ProgressCallback? onReceiveProgress}) async {
    try {
      final Response response = await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      if (response.statusCode == 204) {
        return response.data;
      }
      throw "something went wrong";
    } catch (e) {
      rethrow;
    }
  }
}
