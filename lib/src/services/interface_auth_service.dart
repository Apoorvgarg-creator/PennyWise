abstract class IAuthService {

  Future<String?> login({
    required String email,
    required String password,
  });
}