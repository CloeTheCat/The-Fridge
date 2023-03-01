import 'package:flutter/services.dart';
import 'dart:convert';

Future<void> readJson() async {
  final String response = await rootBundle
      .loadString('lib/components/utils/example_data copy.json');
  final data = await json.decode(response);
}
