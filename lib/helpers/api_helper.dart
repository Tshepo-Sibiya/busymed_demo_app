import 'package:http/http.dart' as http;

class ProductHelper {
  String productsEndpoint = 'https://dev.busymed.com/api/products_top_20';
  String productId;
  String productImageEndpoint = 'https://dev.busymed.com/product';

  ProductHelper();

  Future<http.Response> fetchProducts() {
    return http.get(productsEndpoint);
  }

  // Future<http.Response> fetchProductImage() {
  //   return http.get('$productImageEndpoint/$productId');
  // }
}
