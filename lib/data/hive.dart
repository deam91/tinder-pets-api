import 'package:faker/faker.dart';
import 'package:hive/hive.dart';
import 'package:tinder_pets/models/cat.dart';
import 'package:tinder_pets/models/dog.dart';
import 'package:tinder_pets/models/user.dart';
import 'package:tinder_pets/models/vote.dart';
import 'package:tinder_pets/models/vote_type.dart';
import 'package:uuid/uuid.dart';

Future<void> initHive() async {
  Hive.init('./db');
  if (!Hive.isAdapterRegistered(CatAdapter().typeId)) {
    Hive.registerAdapter(CatAdapter());
  }
  if (!Hive.isAdapterRegistered(DogAdapter().typeId)) {
    Hive.registerAdapter(DogAdapter());
  }
  if (!Hive.isAdapterRegistered(VoteAdapter().typeId)) {
    Hive.registerAdapter(VoteAdapter());
  }
  if (!Hive.isAdapterRegistered(UserAdapter().typeId)) {
    Hive.registerAdapter(UserAdapter());
  }
  var cats = await Hive.openBox<Cat>('cats');
  var dogs = await Hive.openBox<Dog>('dogs');
  var votes = await Hive.openBox<Vote>('votes');
  var users = await Hive.openBox<User>('users');

  var uuid = const Uuid();
  var faker = Faker();
  if (cats.isEmpty) {
    List.generate(
      100,
      (index) async {
        final uid = uuid.v4();
        await cats.put(
          uid,
          Cat(
            id: uid,
            name: faker.person.firstName(),
            path: faker.image.image(
              height: 220,
              width: 220,
              keywords: ['cats', 'pets'],
              random: true,
            ),
          ),
        );
      },
    );
  }
  if (dogs.isEmpty) {
    List.generate(
      100,
      (index) async {
        final uid = uuid.v4();
        await dogs.put(
          uid,
          Dog(
            id: uid,
            name: faker.person.firstName(),
            path: faker.image.image(
              height: 220,
              width: 220,
              keywords: ['dogs', 'pets'],
              random: true,
            ),
          ),
        );
      },
    );
  }
  if (users.isEmpty) {
    List.generate(
      1,
      (index) async {
        final uid = uuid.v4();
        await users.put(
          uid,
          User(
            id: uid,
            name: faker.person.name(),
          ),
        );
      },
    );
  }
  if (votes.isEmpty) {
    final user = users.getAt(0);
    List.generate(
      50,
      (index) async {
        final uid = uuid.v4();
        final animal = index > 25 ? dogs.getAt(index) : cats.getAt(index);
        await votes.put(
          uid,
          Vote(
            user_id: user?.id ?? '',
            animal_id: animal?.id ?? '',
            id: uid,
            liked: true,
            vote_type: index > 25 ? VoteType.dog.value : VoteType.cat.value,
            created_at: DateTime.now(),
            updated_at: DateTime.now(),
          ),
        );
      },
    );
  }
}
