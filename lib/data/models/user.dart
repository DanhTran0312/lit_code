import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:lit_code/data/models/models.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@HiveType(typeId: 0)
@freezed
abstract class User with _$User {
  const factory User({
    @HiveField(1) required String id,
    @HiveField(2) String? name,
    @HiveField(3) String? email,
    @HiveField(4) String? photoUrl,
    @HiveField(5) @Default(Settings()) Settings? settings,
    @HiveField(6) @Default([]) List<String>? completedQuestions,
    @HiveField(7) @Default('') String? questionsVersion,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  const User._();

  static const empty = User(id: '');

  bool get isEmpty => this == User.empty;
  bool get isNotEmpty => this != User.empty;
}
