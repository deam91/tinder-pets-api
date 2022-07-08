import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:hive/hive.dart';
import 'package:tinder_pets/models/cat.dart';
import 'package:tinder_pets/models/dog.dart';
import 'package:tinder_pets/models/vote.dart';
import 'package:tinder_pets/models/vote_request.dart';
import 'package:tinder_pets/models/vote_type.dart';
import 'package:tinder_pets/validators/auth.dart';
import 'package:uuid/uuid.dart';

Future<Response> onRequest(RequestContext context) async {
  final box = await Hive.openBox<Vote>('votes');
  if (context.request.method == HttpMethod.post) {
    final token = context.read<String>();
    final user = await AuthHandler.getAuthenticatedUser(token);

    final body = await context.request.body();
    final data = json.decode(body) as Map<String, dynamic>;
    final voteRequest = VoteRequest.fromJson(data);

    final cats = await Hive.openBox<Cat>('cats');
    final dogs = await Hive.openBox<Dog>('dogs');
    var matchAnimalAndPet = false;
    if ((cats.get(voteRequest.animal_id) != null &&
            VoteType.cat == voteRequest.vote_type) ||
        dogs.get(voteRequest.animal_id) != null &&
            VoteType.dog == voteRequest.vote_type) {
      matchAnimalAndPet = true;
    }

    if (!matchAnimalAndPet) {
      return Response.json(
        body: {
          'success': false,
          'result': 'We cannot find your pet in the system'
        },
      );
    }

    final vote = box.values.where(
      (element) =>
          element.user_id == user?.id &&
          element.animal_id == voteRequest.animal_id,
    );
    if (vote.isEmpty) {
      var uuid = const Uuid();
      final uid = uuid.v4();
      await box.put(
        uid,
        Vote(
          user_id: user?.id ?? '',
          animal_id: voteRequest.animal_id,
          id: uid,
          liked: voteRequest.liked,
          vote_type: voteRequest.vote_type.value,
          created_at: DateTime.now(),
          updated_at: DateTime.now(),
        ),
      );
      final result = box.get(uid);
      return Response.json(
        body: {'success': true, 'result': result?.toJson()},
      );
    } else {
      final element = vote.first;
      element.liked = voteRequest.liked;
      await element.save();
      return Response.json(
        body: {'success': true, 'result': element.toJson()},
      );
    }
  }

  final votes = box.values.cast<Vote>();
  final data = votes.map((e) => e.toJson()).toList();
  return Response.json(
    body: {'success': true, 'count': data.length, 'result': data},
  );
}
