import 'data.dart';

class BoardData {
  int? statusCode;
  Data? data;

  BoardData({this.statusCode, this.data});

  factory BoardData.fromJson(Map<String, dynamic> json) => BoardData(
        statusCode: json['statusCode'] as int?,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'statusCode': statusCode,
        'data': data?.toJson(),
      };
}
