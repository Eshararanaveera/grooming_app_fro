class ApiConfig {
  // Base URL for local python backend.
  // 10.0.2.2 maps to the host's loopback interface from an Android emulator.
  // For iOS simulator, use 'http://localhost:8000' or 'http://127.0.0.1:8000'.
  static const String baseUrl = 'http://10.0.2.2:8000';
}
