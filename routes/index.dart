import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  return Response.json(
    body: {
      'success': true,
      'result': 'Welcome to Dart Frog - Tinder Pets API!'
    },
  );
}
