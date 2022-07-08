import 'package:dart_frog/dart_frog.dart';
import 'package:tinder_pets/validators/auth.dart';

class CustomResponse {
  static dynamic respond(
    String authorization, {
    required Future<Response> Function() success,
    required Response Function(String message) error,
  }) {
    if (authorization == '') {
      return Response.json(
        statusCode: 400,
        body: {'success': false, 'result': 'Access Denied'},
      );
    }
    final response = AuthHandler.validateToken(authorization).when(
      success: success,
      error: error,
    );
    return response;
  }
}
