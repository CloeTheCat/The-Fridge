import 'board.dart';
import 'user_data.dart';

class Data {
  UserData? userData;
  List<Board>? boards;

  Data({this.userData, this.boards});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        userData: json['userData'] == null
            ? null
            : UserData.fromJson(json['userData'] as Map<String, dynamic>),
        boards: (json['boards'] as List<dynamic>?)
            ?.map((e) => Board.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'userData': userData?.toJson(),
        'boards': boards?.map((e) => e.toJson()).toList(),
      };
}
