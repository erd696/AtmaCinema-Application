import 'dart:convert';
import 'package:http/http.dart';

class StudioClient {
  static const String baseUrl = '10.0.2.2:8000';
  static const String endpoint = '/api/studio';

  static Future<Map<String, dynamic>> countBookedDate(
      int id, int idFilm) async {
    try {
      final uri = Uri.http(baseUrl, '$endpoint/countBookedDate/$id/$idFilm');

      final response = await get(
        uri,
        headers: {
          'Accept': 'application/json',
        },
      );

      print("Seat Count Response (${response.statusCode}): ${response.body}");

      if (response.statusCode == 200) {
        return json.decode(response.body) as Map<String, dynamic>;
      } else {
        throw Exception(
          'Failed to load seat availability: ${response.reasonPhrase}',
        );
      }
    } catch (e) {
      print('Error loading seat availability: $e');
      return Future.error('Error: $e');
    }
  }
}
