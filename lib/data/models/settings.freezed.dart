// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Settings _$SettingsFromJson(Map<String, dynamic> json) {
  return _Settings.fromJson(json);
}

/// @nodoc
mixin _$Settings {
  @HiveField(0)
  bool get isDarkMode => throw _privateConstructorUsedError;
  @HiveField(1)
  bool get isNotificationsEnabled => throw _privateConstructorUsedError;
  @HiveField(2)
  List<Difficulty> get difficulties => throw _privateConstructorUsedError;
  @HiveField(3)
  List<Category> get categories => throw _privateConstructorUsedError;
  @HiveField(4)
  DateTime? get goalDate => throw _privateConstructorUsedError;
  @HiveField(5)
  int? get goalQuestions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsCopyWith<Settings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res, Settings>;
  @useResult
  $Res call(
      {@HiveField(0) bool isDarkMode,
      @HiveField(1) bool isNotificationsEnabled,
      @HiveField(2) List<Difficulty> difficulties,
      @HiveField(3) List<Category> categories,
      @HiveField(4) DateTime? goalDate,
      @HiveField(5) int? goalQuestions});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res, $Val extends Settings>
    implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
    Object? isNotificationsEnabled = null,
    Object? difficulties = null,
    Object? categories = null,
    Object? goalDate = freezed,
    Object? goalQuestions = freezed,
  }) {
    return _then(_value.copyWith(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      isNotificationsEnabled: null == isNotificationsEnabled
          ? _value.isNotificationsEnabled
          : isNotificationsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      difficulties: null == difficulties
          ? _value.difficulties
          : difficulties // ignore: cast_nullable_to_non_nullable
              as List<Difficulty>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      goalDate: freezed == goalDate
          ? _value.goalDate
          : goalDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      goalQuestions: freezed == goalQuestions
          ? _value.goalQuestions
          : goalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$$_SettingsCopyWith(
          _$_Settings value, $Res Function(_$_Settings) then) =
      __$$_SettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) bool isDarkMode,
      @HiveField(1) bool isNotificationsEnabled,
      @HiveField(2) List<Difficulty> difficulties,
      @HiveField(3) List<Category> categories,
      @HiveField(4) DateTime? goalDate,
      @HiveField(5) int? goalQuestions});
}

/// @nodoc
class __$$_SettingsCopyWithImpl<$Res>
    extends _$SettingsCopyWithImpl<$Res, _$_Settings>
    implements _$$_SettingsCopyWith<$Res> {
  __$$_SettingsCopyWithImpl(
      _$_Settings _value, $Res Function(_$_Settings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
    Object? isNotificationsEnabled = null,
    Object? difficulties = null,
    Object? categories = null,
    Object? goalDate = freezed,
    Object? goalQuestions = freezed,
  }) {
    return _then(_$_Settings(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      isNotificationsEnabled: null == isNotificationsEnabled
          ? _value.isNotificationsEnabled
          : isNotificationsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      difficulties: null == difficulties
          ? _value._difficulties
          : difficulties // ignore: cast_nullable_to_non_nullable
              as List<Difficulty>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      goalDate: freezed == goalDate
          ? _value.goalDate
          : goalDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      goalQuestions: freezed == goalQuestions
          ? _value.goalQuestions
          : goalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Settings extends _Settings {
  const _$_Settings(
      {@HiveField(0) this.isDarkMode = false,
      @HiveField(1) this.isNotificationsEnabled = false,
      @HiveField(2) final List<Difficulty> difficulties = const [
        Difficulty.easy,
        Difficulty.medium,
        Difficulty.hard
      ],
      @HiveField(3) final List<Category> categories = const [
        Category.arrayAndHashing,
        Category.twoPointers,
        Category.slidingWindow,
        Category.stack,
        Category.binarySearch,
        Category.trees,
        Category.tries,
        Category.linkedList,
        Category.heapAndPriorityQueue,
        Category.backtracking,
        Category.graphs,
        Category.advancedGraphs,
        Category.dynamicProgramming,
        Category.advancedDynamicProgramming,
        Category.greedy,
        Category.intervals,
        Category.bitManipulation,
        Category.mathAndGeometry
      ],
      @HiveField(4) this.goalDate,
      @HiveField(5) this.goalQuestions})
      : _difficulties = difficulties,
        _categories = categories,
        super._();

  factory _$_Settings.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final bool isDarkMode;
  @override
  @JsonKey()
  @HiveField(1)
  final bool isNotificationsEnabled;
  final List<Difficulty> _difficulties;
  @override
  @JsonKey()
  @HiveField(2)
  List<Difficulty> get difficulties {
    if (_difficulties is EqualUnmodifiableListView) return _difficulties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_difficulties);
  }

  final List<Category> _categories;
  @override
  @JsonKey()
  @HiveField(3)
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @HiveField(4)
  final DateTime? goalDate;
  @override
  @HiveField(5)
  final int? goalQuestions;

  @override
  String toString() {
    return 'Settings(isDarkMode: $isDarkMode, isNotificationsEnabled: $isNotificationsEnabled, difficulties: $difficulties, categories: $categories, goalDate: $goalDate, goalQuestions: $goalQuestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Settings &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.isNotificationsEnabled, isNotificationsEnabled) ||
                other.isNotificationsEnabled == isNotificationsEnabled) &&
            const DeepCollectionEquality()
                .equals(other._difficulties, _difficulties) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.goalDate, goalDate) ||
                other.goalDate == goalDate) &&
            (identical(other.goalQuestions, goalQuestions) ||
                other.goalQuestions == goalQuestions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isDarkMode,
      isNotificationsEnabled,
      const DeepCollectionEquality().hash(_difficulties),
      const DeepCollectionEquality().hash(_categories),
      goalDate,
      goalQuestions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsCopyWith<_$_Settings> get copyWith =>
      __$$_SettingsCopyWithImpl<_$_Settings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsToJson(
      this,
    );
  }
}

abstract class _Settings extends Settings {
  const factory _Settings(
      {@HiveField(0) final bool isDarkMode,
      @HiveField(1) final bool isNotificationsEnabled,
      @HiveField(2) final List<Difficulty> difficulties,
      @HiveField(3) final List<Category> categories,
      @HiveField(4) final DateTime? goalDate,
      @HiveField(5) final int? goalQuestions}) = _$_Settings;
  const _Settings._() : super._();

  factory _Settings.fromJson(Map<String, dynamic> json) = _$_Settings.fromJson;

  @override
  @HiveField(0)
  bool get isDarkMode;
  @override
  @HiveField(1)
  bool get isNotificationsEnabled;
  @override
  @HiveField(2)
  List<Difficulty> get difficulties;
  @override
  @HiveField(3)
  List<Category> get categories;
  @override
  @HiveField(4)
  DateTime? get goalDate;
  @override
  @HiveField(5)
  int? get goalQuestions;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsCopyWith<_$_Settings> get copyWith =>
      throw _privateConstructorUsedError;
}
