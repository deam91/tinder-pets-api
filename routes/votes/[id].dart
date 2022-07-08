import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:hive/hive.dart';
import 'package:tinder_pets/models/vote.dart';
import 'package:tinder_pets/models/vote_request.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  final box = await Hive.openBox<Vote>('votes');
  try {
    if (context.request.method == HttpMethod.put) {
      final body = await context.request.body();
      final data = json.decode(body) as Map<String, dynamic>;
      final voteRequest = VoteRequest.fromJson(data);

      final vote = box.values.singleWhere(
        (element) => element.id == id,
      );
      vote.liked = voteRequest.liked;
      await vote.save();
      return Response.json(
        body: {'success': true, 'result': vote.toJson()},
      );
    } else if (context.request.method == HttpMethod.delete) {
      await box.delete(id);
      return Response.json(
        statusCode: 200,
        body: {'success': true, 'result': 'Vote deleted'},
      );
    }

    final vote = box.values.singleWhere(
      (element) => element.id == id,
    );
    return Response.json(
      body: {'success': true, 'result': vote.toJson()},
    );
  } on StateError catch (ex) {
    return Response.json(
      statusCode: 404,
      body: {
        'success': false,
        'result': 'Looks like we can not find your vote'
      },
    );
  }
}
