import 'dart:convert';
import 'package:http/http.dart';

class StudioClient {
  static final String baseUrl = '10.0.2.2:8000';
  static final String endpoint = '/api/studio';

  static Future<Map<String, dynamic>> countBookedDate(
      int id, int idFilm) async {
    try {
      final response = await get(
        Uri.parse('$baseUrl$endpoint/countBookedDate/$id/$idFilm'),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        return data;
      } else {
        throw Exception(
            'Failed to load seat availability: ${response.reasonPhrase}');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
