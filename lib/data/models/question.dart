import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/constants/enums.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
abstract class Question with _$Question {
  const factory Question({
    required String id,
    required String title,
    required Difficulty difficulty,
    required Category category,
    required DateTime completedAt,
    @Default(false) bool isCompleted,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
