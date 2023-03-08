import 'dart:convert';

import 'package:the_fridge/json_prova/productmodule/models/product_model.dart';
import 'package:the_fridge/json_prova/apimodule/api_service.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  final isLoading = true.obs;
  // final data = BoardData().obs;

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  getData() async {
    var response = await ApiService().fetchData();
    // .then((value) {
    //   // print('FetchWeatherAPI: ${json.decode(value.toString())}');
    //   print('FetchWeatherAPI: $value');
    //   // data.value = value;
    // });
    return response;
  }

  // fetchData() async {
  //   try {
  //     isLoading(true);
  //     var response = await ApiService.fetchData();
  //     if (response != null) {
  //       print(response);
  //       data = response as Rx<BoardData>;
  //     }
  //   } finally {
  //     isLoading(false);
  //   }
  // }
}
