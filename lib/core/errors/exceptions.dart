class CustomExceptions implements Exception {
  final String message;

  CustomExceptions({required this.message});

  @override
  String toString() {
    return message;
  }
}
