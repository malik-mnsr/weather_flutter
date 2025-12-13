// lib/core/error/failure.dart
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  final StackTrace? stackTrace;

  const Failure(this.message, [this.stackTrace]);

  @override
  List<Object?> get props => [message, stackTrace];

  @override
  String toString() => message;
}

class ServerFailure extends Failure {
  const ServerFailure([String message = 'Erreur serveur', StackTrace? stackTrace])
      : super(message, stackTrace);
}

class NetworkFailure extends Failure {
  const NetworkFailure([String message = 'Erreur réseau', StackTrace? stackTrace])
      : super(message, stackTrace);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure([String message = 'Ville non trouvée', StackTrace? stackTrace])
      : super(message, stackTrace);
}

class CacheFailure extends Failure {
  const CacheFailure([String message = 'Erreur cache', StackTrace? stackTrace])
      : super(message, stackTrace);
}