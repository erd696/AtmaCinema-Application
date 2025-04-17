import 'dart:convert';
import 'package:http/http.dart';
import 'package:tubes/entity/MakananMinuman.dart';

class MakananMinumanClient {
  static const String baseUrl = '10.0.2.2:8000';
  static const String endpoint = '/api/makanan_minuman';

  // Fetch items by category
  static Future<List<Makananminuman>> fetchByKategori(
      String kategori, String token) async {
    try {
      final uri = Uri.http(baseUrl, '$endpoint/kategori/$kategori');
      final response = await get(
        uri,
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/json',
        },
      );

      print("Response (${response.statusCode}): ${response.body}");

      if (response.statusCode != 200) {
        throw Exception(
            'Failed to fetch by kategori: ${response.reasonPhrase}');
      }

      final decoded = json.decode(response.body);
      Iterable list = decoded['data'];

      return list.map((e) => Makananminuman.fromJson(e)).toList();
    } catch (e) {
      return Future.error('Error fetching by kategori: $e');
    }
  }

  // Find item by ID
  static Future<Makananminuman> find(int id) async {
    try {
      final uri = Uri.http(baseUrl, '$endpoint/$id');
      final response = await get(uri);

      print("Find Response (${response.statusCode}): ${response.body}");

      if (response.statusCode != 200) {
        throw Exception('Failed to find item: ${response.reasonPhrase}');
      }

      final jsonResponse = json.decode(response.body);
      final data = jsonResponse['data'];

      return Makananminuman.fromJson(data);
    } catch (e) {
      return Future.error('Error finding item: $e');
    }
  }

  // Search items by query and category
  static Future<List<Makananminuman>> search(
      String query, String kategori, String token) async {
    try {
      final uri = Uri.http(baseUrl, '$endpoint/search', {
        'query': query,
        'category': kategori,
      });

      final response = await get(
        uri,
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/json',
        },
      );

      print("Search Response (${response.statusCode}): ${response.body}");

      if (response.statusCode != 200) {
        throw Exception('Failed to search items: ${response.reasonPhrase}');
      }

      final decoded = json.decode(response.body);

      if (!decoded.containsKey('data')) {
        throw Exception('Missing "data" in search response');
      }

      List<Makananminuman> items = (decoded['data'] as List)
          .map((e) => Makananminuman.fromJson(e))
          .toList();

      return items;
    } catch (e) {
      return Future.error('Error searching items: $e');
    }
  }
}
