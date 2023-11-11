import 'dart:convert';

import 'package:store/models/product_model.dart';
import 'package:http/http.dart' as http;

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    http.Response respons = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
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
