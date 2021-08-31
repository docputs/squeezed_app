class SignInModel {
  final String email;
  final String password;

  const SignInModel({required this.email, required this.password});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SignInModel && other.email == email && other.password == password;
  }

  @override
  int get hashCode => email.hashCode ^ password.hashCode;
}
