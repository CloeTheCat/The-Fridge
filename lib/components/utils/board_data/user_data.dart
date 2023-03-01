class UserData {
  String? name;

  UserData({this.name});

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
      };
}
