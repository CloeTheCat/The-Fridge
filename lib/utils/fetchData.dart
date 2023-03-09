import 'dart:convert';
import 'jsonClass.dart';
import 'package:http/http.dart' as http;


class FetchData {
  Future<JsonClass> fetchData() async {
    var res = await http.get(Uri.parse('https://dfsoftapp.com/jsonprovathefridge'));
    var jsonString = jsonDecode(res.body);
    // print('jsonString: ${jsonString}');
    JsonClass apiData = JsonClass.fromJson(jsonString);
    // print('apiData: ${apiData.statusCode}');
    return apiData;
  }
}