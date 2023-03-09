class JsonClass {
  int? statusCode;
  Data? data;

  JsonClass({this.statusCode, this.data});

  factory JsonClass.fromJson(Map<String, dynamic> json) {
    return JsonClass(
      statusCode: json['statusCode'], 
      data: Data.fromJson(json['data'])
    );
  }
}

class Data {
  UserData? userData;
  List<Boards>? boards;

  Data({this.userData, this.boards});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      userData: UserData.fromJson(json['userData']),
      boards: (json['boards'] as List<dynamic>?)?.map((e) => Boards.fromJson(e as Map<String, dynamic>)).toList()
    );
  }
}

class UserData {
  String? name;

  UserData({this.name});

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      name: json['name']
    );
  }
}

class Boards {
  String? name;
  bool? private;
  List<Notes>? notes;

  Boards({this.name, this.private, this.notes});

  factory Boards.fromJson(Map<String, dynamic> json) {
    return Boards(
      name: json['name'],
      private: json['private'],
      notes: (json['notes'] as List<dynamic>?)?.map((e) => Notes.fromJson(e as Map<String, dynamic>)).toList()
    );
  }
}

class Notes {
  String? title;
  String? content;

  Notes({this.title, this.content});

  factory Notes.fromJson(Map<String, dynamic> json) {
    return Notes(
      title: json["title"],
      content: json['content']
    );
  }
}
