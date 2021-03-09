//import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:busymed/helpers/api_helper.dart';
import 'package:busymed/models/product.dart';

class ProductProvider with ChangeNotifier {
  List<Product> products;
  String errorMessage;
  bool loading = false;

  Future<Product> fetchProducts() async {
    setLoading(true);

    await ProductHelper().fetchProducts().then((data) {
      setLoading(false);
      print(data.body);

      // if (data.statusCode == 200) {
      //   //setUser(User.fromJson(json.decode(data.body)));
      // } else {
      //   Map<String, dynamic> result = json.decode(data.body);
      //   setMessage(result['message']);
      // }
    });

    return null;
  }

  void setLoading(value) {
    loading = value;
    notifyListeners();
  }

  bool isLoading() {
    return loading;
  }

  void setProducts(value) {
    products = value;
    notifyListeners();
  }

  List<Product> getProducts() {
    return products;
  }

  void setMessage(value) {
    errorMessage = value;
    notifyListeners();
  }

  String getMessage() {
    return errorMessage;
  }

  bool isProducts() {
    return products != null ? true : false;
  }
}
