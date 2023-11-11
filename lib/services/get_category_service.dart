import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    http.Response respons = await http.get(
      Uri.parse('https://fakestoreapi.com/products/category/$categoryName'),
    );
    if (respons.statusCode == 200) {
      List<dynamic> data = jsonDecode(respons.body);
      List<ProductModel> productsList = [];
      for (int i = 0; i < data.length; i++) {
        productsList.add(
          ProductModel.fromJson(
            data[i],
          ),
        );
      }
      return productsList;
    } else {
      throw Exception(
          'there is a problem with status code ${respons.statusCode}');
    }
  }
}
