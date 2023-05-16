import '../helper/http_helper.dart';
import '../helper/link_api.dart';

class Product {
  Api api;
  Product(this.api);

  Future<dynamic> getProduct(String category_id) async {
    var response = await api.postData(
      url: ApiLink.product,
      body: {"category_id": category_id},
    );
    return response.fold((l) => l, (r) => r);
  }
}