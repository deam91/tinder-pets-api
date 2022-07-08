import 'package:hive/hive.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:tinder_pets/common/constants.dart';
import 'package:tinder_pets/models/token_response_type.dart';
import 'package:tinder_pets/models/user.dart';

/// Util class [AuthHandler] to get a token from authorization string,
/// generate and validate a token
class AuthHandler {
  /// A function which return the raw token from [authorization] header string.
  static String getToken(String authorization) {
    if (authorization.startsWith('Bearer ')) {
      return authorization.split('Bearer ')[1];
    }
    return '';
  }

  /// A function which generates a token.
  ///
  /// Usually we use a user hash id to generate the payload.
  /// In this implementation we use one mocked user to do it.
  static Future<String> generateToken() async {
    var users = await Hive.openBox<User>('users');
    final user = users.getAt(0);

    final claimSet = JwtClaim(
      subject: 'tinder-cats-dogs',
      issuer: user?.id ?? 'deamdeveloper',
      audience: <String>['tinder-cats-dogs.deamdeveloper.de'],
      maxAge: const Duration(minutes: 30),
    );

    return issueJwtHS256(claimSet, tokenKey);
  }

  static Future<User?> getAuthenticatedUser(String token) async {
    if (token != '') {
      final decClaimSet = verifyJwtHS256Signature(token, tokenKey);
      final userId = decClaimSet.issuer;
      if (userId != null) {
        final users = await Hive.openBox<User>('users');
        final user = users.get(userId, defaultValue: null);
        return user;
      }
    }

    return null;
  }

  static TokenResponseType<String> validateToken(String token) {
    try {
      final decClaimSet = verifyJwtHS256Signature(token, tokenKey);
      decClaimSet.validate(
        audience: 'tinder-cats-dogs.deamdeveloper.de',
      );
      return const TokenResponseType.success();
    } on JwtException catch (ex) {
      return TokenResponseType<String>.error(ex.message);
    }
  }
}
