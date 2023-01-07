// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonEnum()
  Difficulty get difficulty => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonEnum()
  Category get category => throw _privateConstructorUsedError;
  @HiveField(4)
  String get link => throw _privateConstructorUsedError;
  @HiveField(5)
  DateTime? get completedAt => throw _privateConstructorUsedError;
  @HiveField(6)
  bool get isCompleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) @JsonEnum() Difficulty difficulty,
      @HiveField(3) @JsonEnum() Category category,
      @HiveField(4) String link,
      @HiveField(5) DateTime? completedAt,
      @HiveField(6) bool isCompleted});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? difficulty = null,
    Object? category = null,
    Object? link = null,
    Object? completedAt = freezed,
    Object? isCompleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as Difficulty,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$$_QuestionCopyWith(
          _$_Question value, $Res Function(_$_Question) then) =
      __$$_QuestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String title,
      @HiveField(2) @JsonEnum() Difficulty difficulty,
      @HiveField(3) @JsonEnum() Category category,
      @HiveField(4) String link,
      @HiveField(5) DateTime? completedAt,
      @HiveField(6) bool isCompleted});
}

/// @nodoc
class __$$_QuestionCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$_Question>
    implements _$$_QuestionCopyWith<$Res> {
  __$$_QuestionCopyWithImpl(
      _$_Question _value, $Res Function(_$_Question) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? difficulty = null,
    Object? category = null,
    Object? link = null,
    Object? completedAt = freezed,
    Object? isCompleted = null,
  }) {
    return _then(_$_Question(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as Difficulty,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Question implements _Question {
  const _$_Question(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) @JsonEnum() required this.difficulty,
      @HiveField(3) @JsonEnum() required this.category,
      @HiveField(4) required this.link,
      @HiveField(5) this.completedAt,
      @HiveField(6) this.isCompleted = false});

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  @JsonEnum()
  final Difficulty difficulty;
  @override
  @HiveField(3)
  @JsonEnum()
  final Category category;
  @override
  @HiveField(4)
  final String link;
  @override
  @HiveField(5)
  final DateTime? completedAt;
  @override
  @JsonKey()
  @HiveField(6)
  final bool isCompleted;

  @override
  String toString() {
    return 'Question(id: $id, title: $title, difficulty: $difficulty, category: $category, link: $link, completedAt: $completedAt, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Question &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, difficulty, category,
      link, completedAt, isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      __$$_QuestionCopyWithImpl<_$_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  const factory _Question(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String title,
      @HiveField(2) @JsonEnum() required final Difficulty difficulty,
      @HiveField(3) @JsonEnum() required final Category category,
      @HiveField(4) required final String link,
      @HiveField(5) final DateTime? completedAt,
      @HiveField(6) final bool isCompleted}) = _$_Question;

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  @JsonEnum()
  Difficulty get difficulty;
  @override
  @HiveField(3)
  @JsonEnum()
  Category get category;
  @override
  @HiveField(4)
  String get link;
  @override
  @HiveField(5)
  DateTime? get completedAt;
  @override
  @HiveField(6)
  bool get isCompleted;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionCopyWith<_$_Question> get copyWith =>
      throw _privateConstructorUsedError;
}
