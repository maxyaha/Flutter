/// Base class for all application exceptions.
abstract class AppException implements Exception {
  const AppException(this.message);
  final String message;

  @override
  String toString() => '$runtimeType: $message';
}

/// Thrown when a Firebase operation fails in an unexpected way.
class UnexpectedAppException extends AppException {
  const UnexpectedAppException([
    super.message = 'An unexpected error occurred.',
  ]);
}
