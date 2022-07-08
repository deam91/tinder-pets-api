// ignore_for_file: prefer_single_quotes, implicit_dynamic_list_literal, prefer_const_constructors, lines_longer_than_80_chars, avoid_dynamic_calls, library_prefixes, directives_ordering

import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import '../routes/index.dart' as routes_index;
import '../routes/votes/index.dart' as routes_votes_index;
import '../routes/votes/[id].dart' as routes_votes_$id;
import '../routes/dogs/index.dart' as routes_dogs_index;
import '../routes/cats/index.dart' as routes_cats_index;
import '../routes/auth/index.dart' as routes_auth_index;

import '../routes/_middleware.dart' as routes_middleware;
import '../routes/votes/_middleware.dart' as routes_votes_middleware;

void main() => createServer();

Future<HttpServer> createServer() async {
  final ip = InternetAddress.anyIPv4;
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final handler = Cascade().add(buildRootHandler()).handler;
  return serve(handler, ip, port);
}

Handler buildRootHandler() {
  final pipeline = const Pipeline().addMiddleware(routes_middleware.middleware);
  final router = Router()
    ..mount('/auth', (r) => buildAuthHandler()(r))
    ..mount('/cats', (r) => buildCatsHandler()(r))
    ..mount('/dogs', (r) => buildDogsHandler()(r))
    ..mount('/votes', (r) => buildVotesHandler()(r))
    ..mount('/', (r) => buildHandler()(r));
  return pipeline.addHandler(router);
}

Handler buildAuthHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/', routes_auth_index.onRequest);
  return pipeline.addHandler(router);
}

Handler buildCatsHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/', routes_cats_index.onRequest);
  return pipeline.addHandler(router);
}

Handler buildDogsHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/', routes_dogs_index.onRequest);
  return pipeline.addHandler(router);
}

Handler buildVotesHandler() {
  final pipeline = const Pipeline().addMiddleware(routes_votes_middleware.middleware);
  final router = Router()
    ..all('/', routes_votes_index.onRequest)..all('/<id>', routes_votes_$id.onRequest);
  return pipeline.addHandler(router);
}

Handler buildHandler() {
  final pipeline = const Pipeline();
  final router = Router()
    ..all('/', routes_index.onRequest);
  return pipeline.addHandler(router);
}
