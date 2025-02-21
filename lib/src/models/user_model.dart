class UserModel {
  final String id;
  final String name;
  final String avatarUrl;
  final bool isActive;

  UserModel({required this.id, required this.name, required this.avatarUrl, this.isActive = false});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['name'],
      avatarUrl: map['avatarUrl'],
      isActive: map['isActive'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'avatarUrl': avatarUrl,
      'isActive': isActive,
    };
  }
}
