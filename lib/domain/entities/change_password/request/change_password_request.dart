class ChangePasswordRequest {
  const ChangePasswordRequest({
    required this.id,
    required this.password,
  });

  final int id;
  final String password;
}
