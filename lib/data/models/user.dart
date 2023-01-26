import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/data/models/models.dart';

part 'user.freezed.dart';
part 'user.g.dart';

// User is a class that stores information about a user of the app.
// It is used to store information about the user locally in Hive.

@HiveType(typeId: 0)
@freezed
abstract class User with _$User {
  const factory User({
    @HiveField(1) required String id,
    @HiveField(2) String? name,
    @HiveField(3) String? email,
    @HiveField(4) String? photoUrl,
    @HiveField(5) @Default(Settings()) Settings? settings,
    @HiveField(6) @Default([]) List<Question?> completedQuestions,
    @HiveField(7) @Default('') String? questionsVersion,
    @HiveField(8) int? lastSynced,
    @HiveField(9) int? streak,
    @HiveField(10) Experience? experience,
    @HiveField(11) List<Question?>? todayQuestions,
    @HiveField(12) List<Question?>? thisWeekQuestions,
    @HiveField(13) int? lastQuestionGenerated,
    @HiveField(14) int? experienceLevel,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  const User._();

  static const empty = User(id: '');

  bool get isEmpty => this == User.empty;
  bool get isNotEmpty => this != User.empty;
  User get defaultUser => User(
        id: id,
        name: name ?? 'Anonymous',
        email: email ?? '',
        photoUrl: photoUrl ?? '',
        settings: settings ?? const Settings(),
        completedQuestions: completedQuestions,
        questionsVersion: questionsVersion ?? '',
        lastSynced: lastSynced ?? 0,
      );
}
