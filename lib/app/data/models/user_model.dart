class User {
  final String id;
  final String name;
  final String email;
  final String role; // admin, supervisor, guard, tenant
  final String? siteId;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    this.siteId,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      role: json['role'],
      siteId: json['site_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'role': role,
      'site_id': siteId,
    };
  }
}