import 'dart:convert';
import 'package:http/http.dart';
import 'package:tubes/entity/Review.dart';

class ReviewClient {
  static const String baseUrl = '10.0.2.2:8000';
  static const String endpoint = '/api/review';

  // Fetch reviews for a specific film
  static Future<ResponseReview> fetchReview(int idFilm, String? token) async {
    try {
      final uri = Uri.http(baseUrl, '$endpoint/$idFilm');
      final response = await get(
        uri,
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/json',
        },
      );

      print("Fetch Review (${response.statusCode}): ${response.body}");

      if (response.statusCode != 200) {
        throw Exception('Failed to fetch reviews: ${response.reasonPhrase}');
      }

      final jsonResponse = json.decode(response.body);
      final data = jsonResponse['data'];

      return ResponseReview.fromJson(data);
    } catch (e) {
      print('Error fetching reviews: $e');
      return Future.error('Error fetching reviews: $e');
    }
  }

  // Store a new review
  static Future<bool> storeReview(
    int? idFilm,
    int? idUser,
    int ratingReview,
    String description,
    String? token,
  ) async {
    try {
      final uri = Uri.http(baseUrl, endpoint);
      final response = await post(
        uri,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
          'Accept': 'application/json',
        },
        body: json.encode({
          'id_film': idFilm,
          'id_user': idUser,
          'rating_review': ratingReview,
          'deskripsi_review': description,
        }),
      );

      print("Store Review (${response.statusCode}): ${response.body}");

      if (response.statusCode == 200 || response.statusCode == 201) {
        return true;
      } else {
        print("Failed to add review: ${response.reasonPhrase}");
        return false;
      }
    } catch (e) {
      print("Error storing review: $e");
      return Future.error('Error storing review: $e');
    }
  }
}
