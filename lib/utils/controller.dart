import 'package:get/get.dart';

import 'package:the_fridge/utils/jsonClass.dart';
import 'package:the_fridge/utils/fetchData.dart';


class GlobalController extends GetxController {
  final myData = JsonClass().obs;
  
  JsonClass getData() {
    return myData.value;
  }

  @override
  void onInit() {
    getCose();
    super.onInit();
  }

  getCose() {
    FetchData().fetchData().then((value) {
      myData.value = value;
    });
  }
}