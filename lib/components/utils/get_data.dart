import 'dart:convert';

import 'package:the_fridge/components/example_data.dart';
import 'package:flutter/material.dart';

GetData() {
  const jsonData = exampleData;
  // final parseData = jsonDecode(jsonData);
  return jsonData;
}
