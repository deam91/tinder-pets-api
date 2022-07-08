import 'package:dart_frog/dart_frog.dart';
import 'package:hive/hive.dart';
import 'package:tinder_pets/models/dog.dart';

Future<Response> onRequest(RequestContext context) async {
  final box = await Hive.openBox<Dog>('dogs');
  final dogs = box.values.cast<Dog>();
  final data = dogs.map((e) => e.toJson()).toList();
  return Response.json(
    body: {'success': true, 'count': data.length, 'result': data},
  );
}
