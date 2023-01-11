import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:lit_code/constants/enums.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@HiveType(typeId: 1)
@freezed
abstract class Question with _$Question {
  const factory Question({
    @HiveField(0) required String id,
    @HiveField(1) required String title,
    @HiveField(2) required Difficulty difficulty,
    @HiveField(3) required Category category,
    @HiveField(4) required String link,
    @HiveField(5) int? completedAt,
    @HiveField(6) @Default(false) bool isCompleted,
    @HiveField(7) Confidence? confidence,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
