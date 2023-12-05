class User {
  final String uid; // Firebase user ID
  final String name;
  final String email;

  User({
    required this.uid,
    required this.name,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
    };
  }

  // You can add more methods or properties as needed.
}
