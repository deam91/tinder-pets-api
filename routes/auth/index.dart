import 'package:dart_frog/dart_frog.dart';
import 'package:tinder_pets/validators/auth.dart';

Future<Response> onRequest(RequestContext context) async {
  final token = await AuthHandler.generateToken();
  return Response.json(
    headers: {'Authorization': 'Bearer $token'},
    statusCode: 200,
  );
}
