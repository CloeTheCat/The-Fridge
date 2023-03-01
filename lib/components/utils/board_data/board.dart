import 'note.dart';

class Board {
  String? name;
  bool? private;
  List<Note>? notes;

  Board({this.name, this.private, this.notes});

  factory Board.fromJson(Map<String, dynamic> json) => Board(
        name: json['name'] as String?,
        private: json['private'] as bool?,
        notes: (json['notes'] as List<dynamic>?)
            ?.map((e) => Note.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'private': private,
        'notes': notes?.map((e) => e.toJson()).toList(),
      };
}
