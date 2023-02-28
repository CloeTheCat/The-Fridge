import 'dart:convert';

import 'package:the_fridge/components/exampleData.dart';
import 'package:flutter/material.dart';

GetData() {
  const jsonData = exampleData;
  // final parseData = jsonDecode(jsonData);
  return jsonData;
}
