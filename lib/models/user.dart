class User {
  final String name;
  final String job;
  final String avatarUrl;

  User({
    this.name,
    this.job,
    this.avatarUrl,
  });

  factory User.fromJSON(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      job: json['job'],
      avatarUrl: json['avatarUrl'],
    );
  }
}
