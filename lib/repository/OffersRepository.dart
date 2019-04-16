import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_flutter_layouts2/domain/Offer.dart';

class OffersRepository {
  static final String postsUrl =
      "http://www.mocky.io/v2/5cb62df73300001d3b5d806f";

  static Future<List<Offer>> getAllOffers() async {
    final response = await http.get(postsUrl);
    if (response.statusCode == 200) {
      return offersFromJson(response.body);
    } else {
      throw Exception('Failed to load photos');
    }
  }
}
