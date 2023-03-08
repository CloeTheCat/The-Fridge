// To parse this JSON data, do
//
//     final boardData = boardDataFromJson(jsonString);

import 'dart:convert';

BoardData boardDataFromJson(String str) => BoardData.fromJson(json.decode(str));

String boardDataToJson(BoardData data) => json.encode(data.toJson());

class BoardData {
    BoardData(jsonString, {
        this.statusCode,
        this.data,
    });

    int? statusCode;
    Data? data;

    factory BoardData.fromJson(Map<String, dynamic> json) => BoardData(
        statusCode: json["statusCode"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "data": data?.toJson(),
    };
}

class Data {
    Data({
        this.userData,
        this.boards,
    });

    UserData? userData;
    List<Board>? boards;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        userData: json["userData"] == null ? null : UserData.fromJson(json["userData"]),
        boards: json["boards"] == null ? [] : List<Board>.from(json["boards"]!.map((x) => Board.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "userData": userData?.toJson(),
        "boards": boards == null ? [] : List<dynamic>.from(boards!.map((x) => x.toJson())),
    };
}

class Board {
    Board({
        this.name,
        this.private,
        this.notes,
    });

    String? name;
    bool? private;
    List<Note>? notes;

    factory Board.fromJson(Map<String, dynamic> json) => Board(
        name: json["name"],
        private: json["private"],
        notes: json["notes"] == null ? [] : List<Note>.from(json["notes"]!.map((x) => Note.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "private": private,
        "notes": notes == null ? [] : List<dynamic>.from(notes!.map((x) => x.toJson())),
    };
}

class Note {
    Note({
        this.title,
        this.content,
    });

    String? title;
    String? content;

    factory Note.fromJson(Map<String, dynamic> json) => Note(
        title: json["title"],
        content: json["content"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "content": content,
    };
}

class UserData {
    UserData({
        this.name,
    });

    String? name;

    factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
    };
}
