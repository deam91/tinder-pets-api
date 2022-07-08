import 'package:dart_frog/dart_frog.dart';
import 'package:tinder_pets/data/hive.dart';
import 'package:tinder_pets/validators/auth.dart';

Handler middleware(Handler handler) {
  handler.use(requestLogger());
  return (context) async {
    // Hive initialization [initHive] should never be done in a middleware.
    // Done here for the sake of the example, and because
    // I didn't find where else to do it
    await initHive();
    if (context.request.url.path == 'auth' ||
        context.request.url.path == 'cats' ||
        context.request.url.path == 'dogs') {
      final response = await handler(context);
      return response;
    }
    final authorization = AuthHandler.getToken(
      context.request.headers['Authorization'].toString(),
    );
    if (authorization == '') {
      return Response.json(
        statusCode: 400,
        body: {
          'success': false,
          'result': 'Access token is missing or invalid'
        },
      );
    }
    return AuthHandler.validateToken(authorization).when(
      success: () async {
        final response = await handler(context);
        return response;
      },
      error: (error) {
        return Response.json(
          statusCode: 400,
          body: {'success': false, 'result': error},
        );
      },
    );
  };
}
