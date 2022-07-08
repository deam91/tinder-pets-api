import 'package:hive/hive.dart';

/// Enum for [VoteType]
enum VoteType {
  /// [VoteType.cat]
  cat(1, 'cat'),

  /// [VoteType.dog]
  dog(2, 'dog');

  /// [VoteType] constructor. Accepts [id] and [value]
  const VoteType(this.id, this.value);

  /// The [id] for the [VoteType]
  final int id;

  /// The [value] for the [VoteType]
  final String value;
}
