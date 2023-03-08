import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:the_fridge/json_prova/productmodule/models/product_model.dart';

class ApiService {

  Future<BoardData> fetchData() async {
    final response =
        await http.get(Uri.parse('https://dfsoftapp.com/jsonprovathefridge'));
    final jsonString = response.body;
    final boardData = boardDataFromJson(jsonString);
    return boardData;
  }
}
