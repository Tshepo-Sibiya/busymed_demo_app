import 'dart:convert';

import 'package:busymed/models/product.dart';
import 'package:http/http.dart';

class APIHelper {
  static Future<List<Product>> getPosts({int page = 1, int limit = 10}) async {
    try {
      var response = await get('');
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        List<Product> posts = [];
        body.forEach((e) {
          Product post = Product.fromJson(e);
          posts.add(post);
        });
        return List<Product>();
      } else {
        return List<Product>();
      }
    } catch (e) {
      print('UNEXPECTED ERROR');
      print(e.toString());
      return null;
    }
  }
}
