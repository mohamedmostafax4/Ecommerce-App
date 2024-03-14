import 'dart:convert';

import 'package:ecommerce/data/items.dart';
import 'package:http/http.dart' as http;

Future<List<Item>> fetchData() async {
  try {
    final url = Uri.parse('https://fakestoreapi.com/products');
    final response = await http.get(url);
    final List<dynamic> data = jsonDecode(response.body);
    // Assuming Character is a class representing characters
    return data.map((json) => Item.fromJson(json)).toList();
  } catch (e) {
    print(e.toString());
    return []; // Return an empty list on error
  }
}
