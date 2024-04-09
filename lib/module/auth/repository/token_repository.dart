abstract class TokenRepository {
  Future<String?> getToken();

  void addToken(String token);

  Future<void> saveToken(String token);

  Future<void> clearToken();
}