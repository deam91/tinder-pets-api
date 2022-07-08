import 'package:dart_frog/dart_frog.dart';
import 'package:tinder_pets/validators/auth.dart';

Handler middleware(Handler handler) {
  return handler.use(requestLogger()).use(
        provider<String>(
          (context) => AuthHandler.getToken(
            context.request.headers['Authorization'].toString(),
          ),
        ),
      );
}
