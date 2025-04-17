import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:tubes/entity/Film.dart';

class FilmClient {
  static final String baseUrl = '10.0.2.2:8000';
  static final String endpoint = '/api/film';

  // Fungsi untuk mengambil data film berdasarkan status (Now Playing atau Coming Soon)
  static Future<List<Film>> fetchByStatus(String status, String token) async {
    try {
      final uri = Uri.http(baseUrl, '$endpoint/status/$status');
      final response = await http.get(
        uri,
        headers: {'Authorization': 'Bearer $token'},
      );

      print("Raw API Response: ${response.statusCode} - ${response.body}");

      if (response.statusCode != 200) {
        throw Exception(
            "Server error: ${response.statusCode} - ${response.reasonPhrase}");
      }

      final decoded = json.decode(response.body);
      if (!decoded.containsKey('data')) {
        throw Exception("Invalid response format");
      }

      Iterable list = decoded['data'];
      return list.map((e) => Film.fromJson(e)).toList();
    } catch (e) {
      return Future.error("fetchByStatus error: $e");
    }
  }

  // Fungsi untuk mengambil studio berdasarkan ID film
  static Future<Map<String, dynamic>> fetchStudioByFilm(int filmId) async {
    try {
      final uri = Uri.http(baseUrl, '$endpoint/studio/$filmId');
      final response = await http.get(uri);

      if (response.statusCode != 200) {
        throw Exception(
            "Server error: ${response.statusCode} - ${response.reasonPhrase}");
      }

      return json.decode(response.body);
    } catch (e) {
      return Future.error("fetchStudioByFilm error: $e");
    }
  }

  // Fungsi untuk mengambil jadwal film berdasarkan ID film
  static Future<Map<String, dynamic>> getFilmSchedule(
      int filmId, DateTime? date) async {
    try {
      String formattedDate = DateFormat('dd-MM-yyyy').format(date!);
      final uri =
          Uri.http(baseUrl, '$endpoint/schedule/$filmId/$formattedDate');
      final response = await http.get(uri);

      print("Datetime: $date");
      print("Schedule response: ${response.statusCode} - ${response.body}");

      if (response.statusCode == 200 || response.statusCode == 201) {
        return json.decode(response.body);
      } else {
        throw Exception("Failed to load film schedule: ${response.statusCode}");
      }
    } catch (e) {
      return Future.error("getFilmSchedule error: $e");
    }
  }

  // Fungsi untuk mengambil detail film berdasarkan ID
  static Future<Film> find(int id) async {
    try {
      final uri = Uri.http(baseUrl, '$endpoint/$id');
      final response = await http.get(uri);

      if (response.statusCode != 200) {
        throw Exception(
            "Server error: ${response.statusCode} - ${response.reasonPhrase}");
      }

      final decoded = json.decode(response.body);
      if (!decoded.containsKey('data')) {
        throw Exception("Invalid response format");
      }

      return Film.fromJson(decoded['data']);
    } catch (e) {
      return Future.error("find error: $e");
    }
  }

  // Fungsi untuk handle search movie
  static Future<List<Film>> searchMovies(
      String query, String status, String token) async {
    try {
      final uri = Uri.http(baseUrl, '$endpoint/search', {
        'query': query,
        'status': status,
      });

      final response = await http.get(
        uri,
        headers: {'Authorization': 'Bearer $token'},
      );

      if (response.statusCode != 200) {
        throw Exception(
            "Server error: ${response.statusCode} - ${response.reasonPhrase}");
      }

      final decoded = json.decode(response.body);
      if (!decoded.containsKey('data')) {
        throw Exception("Invalid response format");
      }

      final films =
          (decoded['data'] as List).map((film) => Film.fromJson(film)).toList();
      return films;
    } catch (e) {
      return Future.error("searchMovies error: $e");
    }
  }
}
