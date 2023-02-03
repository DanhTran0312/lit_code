// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @HiveField(1)
  String get id => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get photoUrl => throw _privateConstructorUsedError;
  @HiveField(5)
  Settings? get settings => throw _privateConstructorUsedError;
  @HiveField(6)
  List<Question> get completedQuestions => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get questionsVersion => throw _privateConstructorUsedError;
  @HiveField(8)
  int? get lastSynced => throw _privateConstructorUsedError;
  @HiveField(9)
  int? get streak => throw _privateConstructorUsedError;
  @HiveField(10)
  Experience? get experience => throw _privateConstructorUsedError;
  @HiveField(11)
  List<Question>? get todayQuestions => throw _privateConstructorUsedError;
  @HiveField(12)
  int? get weeklyQuestionCount => throw _privateConstructorUsedError;
  @HiveField(13)
  int? get timeSinceLastGenerated => throw _privateConstructorUsedError;
  @HiveField(14)
  double? get experienceLevel => throw _privateConstructorUsedError;
  @HiveField(15)
  int? get dailyQuestionCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@HiveField(1) String id,
      @HiveField(2) String? name,
      @HiveField(3) String? email,
      @HiveField(4) String? photoUrl,
      @HiveField(5) Settings? settings,
      @HiveField(6) List<Question> completedQuestions,
      @HiveField(7) String? questionsVersion,
      @HiveField(8) int? lastSynced,
      @HiveField(9) int? streak,
      @HiveField(10) Experience? experience,
      @HiveField(11) List<Question>? todayQuestions,
      @HiveField(12) int? weeklyQuestionCount,
      @HiveField(13) int? timeSinceLastGenerated,
      @HiveField(14) double? experienceLevel,
      @HiveField(15) int? dailyQuestionCount});

  $SettingsCopyWith<$Res>? get settings;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? photoUrl = freezed,
    Object? settings = freezed,
    Object? completedQuestions = null,
    Object? questionsVersion = freezed,
    Object? lastSynced = freezed,
    Object? streak = freezed,
    Object? experience = freezed,
    Object? todayQuestions = freezed,
    Object? weeklyQuestionCount = freezed,
    Object? timeSinceLastGenerated = freezed,
    Object? experienceLevel = freezed,
    Object? dailyQuestionCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings?,
      completedQuestions: null == completedQuestions
          ? _value.completedQuestions
          : completedQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      questionsVersion: freezed == questionsVersion
          ? _value.questionsVersion
          : questionsVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSynced: freezed == lastSynced
          ? _value.lastSynced
          : lastSynced // ignore: cast_nullable_to_non_nullable
              as int?,
      streak: freezed == streak
          ? _value.streak
          : streak // ignore: cast_nullable_to_non_nullable
              as int?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience?,
      todayQuestions: freezed == todayQuestions
          ? _value.todayQuestions
          : todayQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
      weeklyQuestionCount: freezed == weeklyQuestionCount
          ? _value.weeklyQuestionCount
          : weeklyQuestionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      timeSinceLastGenerated: freezed == timeSinceLastGenerated
          ? _value.timeSinceLastGenerated
          : timeSinceLastGenerated // ignore: cast_nullable_to_non_nullable
              as int?,
      experienceLevel: freezed == experienceLevel
          ? _value.experienceLevel
          : experienceLevel // ignore: cast_nullable_to_non_nullable
              as double?,
      dailyQuestionCount: freezed == dailyQuestionCount
          ? _value.dailyQuestionCount
          : dailyQuestionCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<$Res>? get settings {
    if (_value.settings == null) {
      return null;
    }

    return $SettingsCopyWith<$Res>(_value.settings!, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) String id,
      @HiveField(2) String? name,
      @HiveField(3) String? email,
      @HiveField(4) String? photoUrl,
      @HiveField(5) Settings? settings,
      @HiveField(6) List<Question> completedQuestions,
      @HiveField(7) String? questionsVersion,
      @HiveField(8) int? lastSynced,
      @HiveField(9) int? streak,
      @HiveField(10) Experience? experience,
      @HiveField(11) List<Question>? todayQuestions,
      @HiveField(12) int? weeklyQuestionCount,
      @HiveField(13) int? timeSinceLastGenerated,
      @HiveField(14) double? experienceLevel,
      @HiveField(15) int? dailyQuestionCount});

  @override
  $SettingsCopyWith<$Res>? get settings;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? email = freezed,
    Object? photoUrl = freezed,
    Object? settings = freezed,
    Object? completedQuestions = null,
    Object? questionsVersion = freezed,
    Object? lastSynced = freezed,
    Object? streak = freezed,
    Object? experience = freezed,
    Object? todayQuestions = freezed,
    Object? weeklyQuestionCount = freezed,
    Object? timeSinceLastGenerated = freezed,
    Object? experienceLevel = freezed,
    Object? dailyQuestionCount = freezed,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings?,
      completedQuestions: null == completedQuestions
          ? _value._completedQuestions
          : completedQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      questionsVersion: freezed == questionsVersion
          ? _value.questionsVersion
          : questionsVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSynced: freezed == lastSynced
          ? _value.lastSynced
          : lastSynced // ignore: cast_nullable_to_non_nullable
              as int?,
      streak: freezed == streak
          ? _value.streak
          : streak // ignore: cast_nullable_to_non_nullable
              as int?,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as Experience?,
      todayQuestions: freezed == todayQuestions
          ? _value._todayQuestions
          : todayQuestions // ignore: cast_nullable_to_non_nullable
              as List<Question>?,
      weeklyQuestionCount: freezed == weeklyQuestionCount
          ? _value.weeklyQuestionCount
          : weeklyQuestionCount // ignore: cast_nullable_to_non_nullable
              as int?,
      timeSinceLastGenerated: freezed == timeSinceLastGenerated
          ? _value.timeSinceLastGenerated
          : timeSinceLastGenerated // ignore: cast_nullable_to_non_nullable
              as int?,
      experienceLevel: freezed == experienceLevel
          ? _value.experienceLevel
          : experienceLevel // ignore: cast_nullable_to_non_nullable
              as double?,
      dailyQuestionCount: freezed == dailyQuestionCount
          ? _value.dailyQuestionCount
          : dailyQuestionCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User {
  const _$_User(
      {@HiveField(1) required this.id,
      @HiveField(2) this.name,
      @HiveField(3) this.email,
      @HiveField(4) this.photoUrl,
      @HiveField(5) this.settings = const Settings(),
      @HiveField(6) final List<Question> completedQuestions = const [],
      @HiveField(7) this.questionsVersion = '',
      @HiveField(8) this.lastSynced,
      @HiveField(9) this.streak,
      @HiveField(10) this.experience = Experience.intermediate,
      @HiveField(11) final List<Question>? todayQuestions,
      @HiveField(12) this.weeklyQuestionCount,
      @HiveField(13) this.timeSinceLastGenerated,
      @HiveField(14) this.experienceLevel = 5.0,
      @HiveField(15) this.dailyQuestionCount = 0})
      : _completedQuestions = completedQuestions,
        _todayQuestions = todayQuestions,
        super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @HiveField(1)
  final String id;
  @override
  @HiveField(2)
  final String? name;
  @override
  @HiveField(3)
  final String? email;
  @override
  @HiveField(4)
  final String? photoUrl;
  @override
  @JsonKey()
  @HiveField(5)
  final Settings? settings;
  final List<Question> _completedQuestions;
  @override
  @JsonKey()
  @HiveField(6)
  List<Question> get completedQuestions {
    if (_completedQuestions is EqualUnmodifiableListView)
      return _completedQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedQuestions);
  }

  @override
  @JsonKey()
  @HiveField(7)
  final String? questionsVersion;
  @override
  @HiveField(8)
  final int? lastSynced;
  @override
  @HiveField(9)
  final int? streak;
  @override
  @JsonKey()
  @HiveField(10)
  final Experience? experience;
  final List<Question>? _todayQuestions;
  @override
  @HiveField(11)
  List<Question>? get todayQuestions {
    final value = _todayQuestions;
    if (value == null) return null;
    if (_todayQuestions is EqualUnmodifiableListView) return _todayQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(12)
  final int? weeklyQuestionCount;
  @override
  @HiveField(13)
  final int? timeSinceLastGenerated;
  @override
  @JsonKey()
  @HiveField(14)
  final double? experienceLevel;
  @override
  @JsonKey()
  @HiveField(15)
  final int? dailyQuestionCount;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, photoUrl: $photoUrl, settings: $settings, completedQuestions: $completedQuestions, questionsVersion: $questionsVersion, lastSynced: $lastSynced, streak: $streak, experience: $experience, todayQuestions: $todayQuestions, weeklyQuestionCount: $weeklyQuestionCount, timeSinceLastGenerated: $timeSinceLastGenerated, experienceLevel: $experienceLevel, dailyQuestionCount: $dailyQuestionCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            const DeepCollectionEquality()
                .equals(other._completedQuestions, _completedQuestions) &&
            (identical(other.questionsVersion, questionsVersion) ||
                other.questionsVersion == questionsVersion) &&
            (identical(other.lastSynced, lastSynced) ||
                other.lastSynced == lastSynced) &&
            (identical(other.streak, streak) || other.streak == streak) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            const DeepCollectionEquality()
                .equals(other._todayQuestions, _todayQuestions) &&
            (identical(other.weeklyQuestionCount, weeklyQuestionCount) ||
                other.weeklyQuestionCount == weeklyQuestionCount) &&
            (identical(other.timeSinceLastGenerated, timeSinceLastGenerated) ||
                other.timeSinceLastGenerated == timeSinceLastGenerated) &&
            (identical(other.experienceLevel, experienceLevel) ||
                other.experienceLevel == experienceLevel) &&
            (identical(other.dailyQuestionCount, dailyQuestionCount) ||
                other.dailyQuestionCount == dailyQuestionCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      photoUrl,
      settings,
      const DeepCollectionEquality().hash(_completedQuestions),
      questionsVersion,
      lastSynced,
      streak,
      experience,
      const DeepCollectionEquality().hash(_todayQuestions),
      weeklyQuestionCount,
      timeSinceLastGenerated,
      experienceLevel,
      dailyQuestionCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User extends User {
  const factory _User(
      {@HiveField(1) required final String id,
      @HiveField(2) final String? name,
      @HiveField(3) final String? email,
      @HiveField(4) final String? photoUrl,
      @HiveField(5) final Settings? settings,
      @HiveField(6) final List<Question> completedQuestions,
      @HiveField(7) final String? questionsVersion,
      @HiveField(8) final int? lastSynced,
      @HiveField(9) final int? streak,
      @HiveField(10) final Experience? experience,
      @HiveField(11) final List<Question>? todayQuestions,
      @HiveField(12) final int? weeklyQuestionCount,
      @HiveField(13) final int? timeSinceLastGenerated,
      @HiveField(14) final double? experienceLevel,
      @HiveField(15) final int? dailyQuestionCount}) = _$_User;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @HiveField(1)
  String get id;
  @override
  @HiveField(2)
  String? get name;
  @override
  @HiveField(3)
  String? get email;
  @override
  @HiveField(4)
  String? get photoUrl;
  @override
  @HiveField(5)
  Settings? get settings;
  @override
  @HiveField(6)
  List<Question> get completedQuestions;
  @override
  @HiveField(7)
  String? get questionsVersion;
  @override
  @HiveField(8)
  int? get lastSynced;
  @override
  @HiveField(9)
  int? get streak;
  @override
  @HiveField(10)
  Experience? get experience;
  @override
  @HiveField(11)
  List<Question>? get todayQuestions;
  @override
  @HiveField(12)
  int? get weeklyQuestionCount;
  @override
  @HiveField(13)
  int? get timeSinceLastGenerated;
  @override
  @HiveField(14)
  double? get experienceLevel;
  @override
  @HiveField(15)
  int? get dailyQuestionCount;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
