import 'dart:convert';

import 'package:http/http.dart' as http;

class CatApiService {
  static const String _baseUrl = 'https://api.thecatapi.com/v1/';
  static const String _apiKey = 'TU_API_KEY';

  // Obtener todas las razas disponibles
  Future<List<Map<String, String>>> fetchBreeds() async {
// Sustituye con tu API Key
    final response = await http.get(
      Uri.parse('https://api.thecatapi.com/v1/breeds'),
      headers: {'x-api-key': _apiKey},
    );

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map<Map<String, String>>((breed) {
        return {
          'id': breed['id'], // ID de la raza
          'name': breed['name'], // Nombre de la raza
        };
      }).toList();
    } else {
      throw Exception('Error al obtener las razas de gatos');
    }
  }

  Future<List<String>> searchCatImages({
    int limit = 10,
    String? breedId, // Agregar ID de raza como filtro
  }) async {
    final queryParams = {
      'limit': '$limit',
      if (breedId != null) 'breed_ids': breedId,
    };

    final uri =
        Uri.https('api.thecatapi.com', '/v1/images/search', queryParams);

    final response = await http.get(
      uri,
      headers: {'x-api-key': _apiKey},
    );

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map<String>((cat) => cat['url'] as String).toList();
    } else {
      throw Exception('Error al realizar la búsqueda');
    }
  }

  Future<List<Map<String, dynamic>>> fetchBreedsWithDetails() async {
    final response = await http.get(
      Uri.parse('https://api.thecatapi.com/v1/breeds'),
      headers: {'x-api-key': _apiKey},
    );

    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map<Map<String, dynamic>>((breed) {
        return {
          'id': breed['id'], // ID de la raza
          'name': breed['name'], // Nombre de la raza
          'origin': breed['origin'], // País de origen
          'intelligence': breed['intelligence'] ?? 0, // Nivel de inteligencia
        };
      }).toList();
    } else {
      throw Exception('Error al obtener las razas de gatos');
    }
  }
}
