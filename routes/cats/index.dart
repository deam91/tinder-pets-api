import 'package:dart_frog/dart_frog.dart';
import 'package:hive/hive.dart';
import 'package:tinder_pets/models/cat.dart';

Future<Response> onRequest(RequestContext context) async {
  final box = await Hive.openBox<Cat>('cats');
  final cats = box.values.cast<Cat>();
  final data = cats.map((e) => e.toJson()).toList();
  return Response.json(
    body: {'success': true, 'count': data.length, 'result': data},
  );
}
