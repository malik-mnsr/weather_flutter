// lib/core/error/exceptions.dart
abstract class AppException implements Exception {
  final String message;
  final StackTrace? stackTrace;

  const AppException(this.message, [this.stackTrace]);

  @override
  String toString() => message;
}

class ServerException extends AppException {
  const ServerException([String message = 'Erreur serveur', StackTrace? stackTrace])
      : super(message, stackTrace);
}

class NetworkException extends AppException {
  const NetworkException([String message = 'Erreur réseau', StackTrace? stackTrace])
      : super(message, stackTrace);
}

class NotFoundException extends AppException {
  const NotFoundException([String message = 'Ville non trouvée', StackTrace? stackTrace])
      : super(message, stackTrace);
}

class InvalidApiKeyException extends AppException {
  const InvalidApiKeyException([String message = 'Clé API invalide', StackTrace? stackTrace])
      : super(message, stackTrace);
}