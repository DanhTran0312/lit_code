// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> category) categoryChanged,
    required TResult Function(List<Difficulty> difficulty) difficultyChanged,
    required TResult Function(int goalDate) goalDateChanged,
    required TResult Function() intializeSettings,
    required TResult Function() signOutRequested,
    required TResult Function(ThemeMode themeMode) themeChanged,
    required TResult Function(Settings settings) updateSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> category)? categoryChanged,
    TResult? Function(List<Difficulty> difficulty)? difficultyChanged,
    TResult? Function(int goalDate)? goalDateChanged,
    TResult? Function()? intializeSettings,
    TResult? Function()? signOutRequested,
    TResult? Function(ThemeMode themeMode)? themeChanged,
    TResult? Function(Settings settings)? updateSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> category)? categoryChanged,
    TResult Function(List<Difficulty> difficulty)? difficultyChanged,
    TResult Function(int goalDate)? goalDateChanged,
    TResult Function()? intializeSettings,
    TResult Function()? signOutRequested,
    TResult Function(ThemeMode themeMode)? themeChanged,
    TResult Function(Settings settings)? updateSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DifficultyChanged value) difficultyChanged,
    required TResult Function(GoalDateChanged value) goalDateChanged,
    required TResult Function(InitializeSettings value) intializeSettings,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(ThemeChanged value) themeChanged,
    required TResult Function(UpdateSettings value) updateSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(DifficultyChanged value)? difficultyChanged,
    TResult? Function(GoalDateChanged value)? goalDateChanged,
    TResult? Function(InitializeSettings value)? intializeSettings,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(ThemeChanged value)? themeChanged,
    TResult? Function(UpdateSettings value)? updateSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DifficultyChanged value)? difficultyChanged,
    TResult Function(GoalDateChanged value)? goalDateChanged,
    TResult Function(InitializeSettings value)? intializeSettings,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(ThemeChanged value)? themeChanged,
    TResult Function(UpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CategoryChangedCopyWith<$Res> {
  factory _$$CategoryChangedCopyWith(
          _$CategoryChanged value, $Res Function(_$CategoryChanged) then) =
      __$$CategoryChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Category> category});
}

/// @nodoc
class __$$CategoryChangedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$CategoryChanged>
    implements _$$CategoryChangedCopyWith<$Res> {
  __$$CategoryChangedCopyWithImpl(
      _$CategoryChanged _value, $Res Function(_$CategoryChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$CategoryChanged(
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$CategoryChanged implements CategoryChanged {
  const _$CategoryChanged({required final List<Category> category})
      : _category = category;

  final List<Category> _category;
  @override
  List<Category> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  String toString() {
    return 'SettingsEvent.categoryChanged(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryChanged &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryChangedCopyWith<_$CategoryChanged> get copyWith =>
      __$$CategoryChangedCopyWithImpl<_$CategoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> category) categoryChanged,
    required TResult Function(List<Difficulty> difficulty) difficultyChanged,
    required TResult Function(int goalDate) goalDateChanged,
    required TResult Function() intializeSettings,
    required TResult Function() signOutRequested,
    required TResult Function(ThemeMode themeMode) themeChanged,
    required TResult Function(Settings settings) updateSettings,
  }) {
    return categoryChanged(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> category)? categoryChanged,
    TResult? Function(List<Difficulty> difficulty)? difficultyChanged,
    TResult? Function(int goalDate)? goalDateChanged,
    TResult? Function()? intializeSettings,
    TResult? Function()? signOutRequested,
    TResult? Function(ThemeMode themeMode)? themeChanged,
    TResult? Function(Settings settings)? updateSettings,
  }) {
    return categoryChanged?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> category)? categoryChanged,
    TResult Function(List<Difficulty> difficulty)? difficultyChanged,
    TResult Function(int goalDate)? goalDateChanged,
    TResult Function()? intializeSettings,
    TResult Function()? signOutRequested,
    TResult Function(ThemeMode themeMode)? themeChanged,
    TResult Function(Settings settings)? updateSettings,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DifficultyChanged value) difficultyChanged,
    required TResult Function(GoalDateChanged value) goalDateChanged,
    required TResult Function(InitializeSettings value) intializeSettings,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(ThemeChanged value) themeChanged,
    required TResult Function(UpdateSettings value) updateSettings,
  }) {
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(DifficultyChanged value)? difficultyChanged,
    TResult? Function(GoalDateChanged value)? goalDateChanged,
    TResult? Function(InitializeSettings value)? intializeSettings,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(ThemeChanged value)? themeChanged,
    TResult? Function(UpdateSettings value)? updateSettings,
  }) {
    return categoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DifficultyChanged value)? difficultyChanged,
    TResult Function(GoalDateChanged value)? goalDateChanged,
    TResult Function(InitializeSettings value)? intializeSettings,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(ThemeChanged value)? themeChanged,
    TResult Function(UpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class CategoryChanged implements SettingsEvent {
  const factory CategoryChanged({required final List<Category> category}) =
      _$CategoryChanged;

  List<Category> get category;
  @JsonKey(ignore: true)
  _$$CategoryChangedCopyWith<_$CategoryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DifficultyChangedCopyWith<$Res> {
  factory _$$DifficultyChangedCopyWith(
          _$DifficultyChanged value, $Res Function(_$DifficultyChanged) then) =
      __$$DifficultyChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Difficulty> difficulty});
}

/// @nodoc
class __$$DifficultyChangedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$DifficultyChanged>
    implements _$$DifficultyChangedCopyWith<$Res> {
  __$$DifficultyChangedCopyWithImpl(
      _$DifficultyChanged _value, $Res Function(_$DifficultyChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? difficulty = null,
  }) {
    return _then(_$DifficultyChanged(
      difficulty: null == difficulty
          ? _value._difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as List<Difficulty>,
    ));
  }
}

/// @nodoc

class _$DifficultyChanged implements DifficultyChanged {
  const _$DifficultyChanged({required final List<Difficulty> difficulty})
      : _difficulty = difficulty;

  final List<Difficulty> _difficulty;
  @override
  List<Difficulty> get difficulty {
    if (_difficulty is EqualUnmodifiableListView) return _difficulty;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_difficulty);
  }

  @override
  String toString() {
    return 'SettingsEvent.difficultyChanged(difficulty: $difficulty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DifficultyChanged &&
            const DeepCollectionEquality()
                .equals(other._difficulty, _difficulty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_difficulty));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DifficultyChangedCopyWith<_$DifficultyChanged> get copyWith =>
      __$$DifficultyChangedCopyWithImpl<_$DifficultyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> category) categoryChanged,
    required TResult Function(List<Difficulty> difficulty) difficultyChanged,
    required TResult Function(int goalDate) goalDateChanged,
    required TResult Function() intializeSettings,
    required TResult Function() signOutRequested,
    required TResult Function(ThemeMode themeMode) themeChanged,
    required TResult Function(Settings settings) updateSettings,
  }) {
    return difficultyChanged(difficulty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> category)? categoryChanged,
    TResult? Function(List<Difficulty> difficulty)? difficultyChanged,
    TResult? Function(int goalDate)? goalDateChanged,
    TResult? Function()? intializeSettings,
    TResult? Function()? signOutRequested,
    TResult? Function(ThemeMode themeMode)? themeChanged,
    TResult? Function(Settings settings)? updateSettings,
  }) {
    return difficultyChanged?.call(difficulty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> category)? categoryChanged,
    TResult Function(List<Difficulty> difficulty)? difficultyChanged,
    TResult Function(int goalDate)? goalDateChanged,
    TResult Function()? intializeSettings,
    TResult Function()? signOutRequested,
    TResult Function(ThemeMode themeMode)? themeChanged,
    TResult Function(Settings settings)? updateSettings,
    required TResult orElse(),
  }) {
    if (difficultyChanged != null) {
      return difficultyChanged(difficulty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DifficultyChanged value) difficultyChanged,
    required TResult Function(GoalDateChanged value) goalDateChanged,
    required TResult Function(InitializeSettings value) intializeSettings,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(ThemeChanged value) themeChanged,
    required TResult Function(UpdateSettings value) updateSettings,
  }) {
    return difficultyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(DifficultyChanged value)? difficultyChanged,
    TResult? Function(GoalDateChanged value)? goalDateChanged,
    TResult? Function(InitializeSettings value)? intializeSettings,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(ThemeChanged value)? themeChanged,
    TResult? Function(UpdateSettings value)? updateSettings,
  }) {
    return difficultyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DifficultyChanged value)? difficultyChanged,
    TResult Function(GoalDateChanged value)? goalDateChanged,
    TResult Function(InitializeSettings value)? intializeSettings,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(ThemeChanged value)? themeChanged,
    TResult Function(UpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) {
    if (difficultyChanged != null) {
      return difficultyChanged(this);
    }
    return orElse();
  }
}

abstract class DifficultyChanged implements SettingsEvent {
  const factory DifficultyChanged(
      {required final List<Difficulty> difficulty}) = _$DifficultyChanged;

  List<Difficulty> get difficulty;
  @JsonKey(ignore: true)
  _$$DifficultyChangedCopyWith<_$DifficultyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoalDateChangedCopyWith<$Res> {
  factory _$$GoalDateChangedCopyWith(
          _$GoalDateChanged value, $Res Function(_$GoalDateChanged) then) =
      __$$GoalDateChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({int goalDate});
}

/// @nodoc
class __$$GoalDateChangedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$GoalDateChanged>
    implements _$$GoalDateChangedCopyWith<$Res> {
  __$$GoalDateChangedCopyWithImpl(
      _$GoalDateChanged _value, $Res Function(_$GoalDateChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goalDate = null,
  }) {
    return _then(_$GoalDateChanged(
      goalDate: null == goalDate
          ? _value.goalDate
          : goalDate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GoalDateChanged implements GoalDateChanged {
  const _$GoalDateChanged({required this.goalDate});

  @override
  final int goalDate;

  @override
  String toString() {
    return 'SettingsEvent.goalDateChanged(goalDate: $goalDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalDateChanged &&
            (identical(other.goalDate, goalDate) ||
                other.goalDate == goalDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, goalDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalDateChangedCopyWith<_$GoalDateChanged> get copyWith =>
      __$$GoalDateChangedCopyWithImpl<_$GoalDateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> category) categoryChanged,
    required TResult Function(List<Difficulty> difficulty) difficultyChanged,
    required TResult Function(int goalDate) goalDateChanged,
    required TResult Function() intializeSettings,
    required TResult Function() signOutRequested,
    required TResult Function(ThemeMode themeMode) themeChanged,
    required TResult Function(Settings settings) updateSettings,
  }) {
    return goalDateChanged(goalDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> category)? categoryChanged,
    TResult? Function(List<Difficulty> difficulty)? difficultyChanged,
    TResult? Function(int goalDate)? goalDateChanged,
    TResult? Function()? intializeSettings,
    TResult? Function()? signOutRequested,
    TResult? Function(ThemeMode themeMode)? themeChanged,
    TResult? Function(Settings settings)? updateSettings,
  }) {
    return goalDateChanged?.call(goalDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> category)? categoryChanged,
    TResult Function(List<Difficulty> difficulty)? difficultyChanged,
    TResult Function(int goalDate)? goalDateChanged,
    TResult Function()? intializeSettings,
    TResult Function()? signOutRequested,
    TResult Function(ThemeMode themeMode)? themeChanged,
    TResult Function(Settings settings)? updateSettings,
    required TResult orElse(),
  }) {
    if (goalDateChanged != null) {
      return goalDateChanged(goalDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DifficultyChanged value) difficultyChanged,
    required TResult Function(GoalDateChanged value) goalDateChanged,
    required TResult Function(InitializeSettings value) intializeSettings,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(ThemeChanged value) themeChanged,
    required TResult Function(UpdateSettings value) updateSettings,
  }) {
    return goalDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(DifficultyChanged value)? difficultyChanged,
    TResult? Function(GoalDateChanged value)? goalDateChanged,
    TResult? Function(InitializeSettings value)? intializeSettings,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(ThemeChanged value)? themeChanged,
    TResult? Function(UpdateSettings value)? updateSettings,
  }) {
    return goalDateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DifficultyChanged value)? difficultyChanged,
    TResult Function(GoalDateChanged value)? goalDateChanged,
    TResult Function(InitializeSettings value)? intializeSettings,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(ThemeChanged value)? themeChanged,
    TResult Function(UpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) {
    if (goalDateChanged != null) {
      return goalDateChanged(this);
    }
    return orElse();
  }
}

abstract class GoalDateChanged implements SettingsEvent {
  const factory GoalDateChanged({required final int goalDate}) =
      _$GoalDateChanged;

  int get goalDate;
  @JsonKey(ignore: true)
  _$$GoalDateChangedCopyWith<_$GoalDateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitializeSettingsCopyWith<$Res> {
  factory _$$InitializeSettingsCopyWith(_$InitializeSettings value,
          $Res Function(_$InitializeSettings) then) =
      __$$InitializeSettingsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeSettingsCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$InitializeSettings>
    implements _$$InitializeSettingsCopyWith<$Res> {
  __$$InitializeSettingsCopyWithImpl(
      _$InitializeSettings _value, $Res Function(_$InitializeSettings) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeSettings implements InitializeSettings {
  const _$InitializeSettings();

  @override
  String toString() {
    return 'SettingsEvent.intializeSettings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeSettings);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> category) categoryChanged,
    required TResult Function(List<Difficulty> difficulty) difficultyChanged,
    required TResult Function(int goalDate) goalDateChanged,
    required TResult Function() intializeSettings,
    required TResult Function() signOutRequested,
    required TResult Function(ThemeMode themeMode) themeChanged,
    required TResult Function(Settings settings) updateSettings,
  }) {
    return intializeSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> category)? categoryChanged,
    TResult? Function(List<Difficulty> difficulty)? difficultyChanged,
    TResult? Function(int goalDate)? goalDateChanged,
    TResult? Function()? intializeSettings,
    TResult? Function()? signOutRequested,
    TResult? Function(ThemeMode themeMode)? themeChanged,
    TResult? Function(Settings settings)? updateSettings,
  }) {
    return intializeSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> category)? categoryChanged,
    TResult Function(List<Difficulty> difficulty)? difficultyChanged,
    TResult Function(int goalDate)? goalDateChanged,
    TResult Function()? intializeSettings,
    TResult Function()? signOutRequested,
    TResult Function(ThemeMode themeMode)? themeChanged,
    TResult Function(Settings settings)? updateSettings,
    required TResult orElse(),
  }) {
    if (intializeSettings != null) {
      return intializeSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DifficultyChanged value) difficultyChanged,
    required TResult Function(GoalDateChanged value) goalDateChanged,
    required TResult Function(InitializeSettings value) intializeSettings,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(ThemeChanged value) themeChanged,
    required TResult Function(UpdateSettings value) updateSettings,
  }) {
    return intializeSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(DifficultyChanged value)? difficultyChanged,
    TResult? Function(GoalDateChanged value)? goalDateChanged,
    TResult? Function(InitializeSettings value)? intializeSettings,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(ThemeChanged value)? themeChanged,
    TResult? Function(UpdateSettings value)? updateSettings,
  }) {
    return intializeSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DifficultyChanged value)? difficultyChanged,
    TResult Function(GoalDateChanged value)? goalDateChanged,
    TResult Function(InitializeSettings value)? intializeSettings,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(ThemeChanged value)? themeChanged,
    TResult Function(UpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) {
    if (intializeSettings != null) {
      return intializeSettings(this);
    }
    return orElse();
  }
}

abstract class InitializeSettings implements SettingsEvent {
  const factory InitializeSettings() = _$InitializeSettings;
}

/// @nodoc
abstract class _$$SignOutRequestedCopyWith<$Res> {
  factory _$$SignOutRequestedCopyWith(
          _$SignOutRequested value, $Res Function(_$SignOutRequested) then) =
      __$$SignOutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutRequestedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SignOutRequested>
    implements _$$SignOutRequestedCopyWith<$Res> {
  __$$SignOutRequestedCopyWithImpl(
      _$SignOutRequested _value, $Res Function(_$SignOutRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutRequested implements SignOutRequested {
  const _$SignOutRequested();

  @override
  String toString() {
    return 'SettingsEvent.signOutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> category) categoryChanged,
    required TResult Function(List<Difficulty> difficulty) difficultyChanged,
    required TResult Function(int goalDate) goalDateChanged,
    required TResult Function() intializeSettings,
    required TResult Function() signOutRequested,
    required TResult Function(ThemeMode themeMode) themeChanged,
    required TResult Function(Settings settings) updateSettings,
  }) {
    return signOutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> category)? categoryChanged,
    TResult? Function(List<Difficulty> difficulty)? difficultyChanged,
    TResult? Function(int goalDate)? goalDateChanged,
    TResult? Function()? intializeSettings,
    TResult? Function()? signOutRequested,
    TResult? Function(ThemeMode themeMode)? themeChanged,
    TResult? Function(Settings settings)? updateSettings,
  }) {
    return signOutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> category)? categoryChanged,
    TResult Function(List<Difficulty> difficulty)? difficultyChanged,
    TResult Function(int goalDate)? goalDateChanged,
    TResult Function()? intializeSettings,
    TResult Function()? signOutRequested,
    TResult Function(ThemeMode themeMode)? themeChanged,
    TResult Function(Settings settings)? updateSettings,
    required TResult orElse(),
  }) {
    if (signOutRequested != null) {
      return signOutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DifficultyChanged value) difficultyChanged,
    required TResult Function(GoalDateChanged value) goalDateChanged,
    required TResult Function(InitializeSettings value) intializeSettings,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(ThemeChanged value) themeChanged,
    required TResult Function(UpdateSettings value) updateSettings,
  }) {
    return signOutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(DifficultyChanged value)? difficultyChanged,
    TResult? Function(GoalDateChanged value)? goalDateChanged,
    TResult? Function(InitializeSettings value)? intializeSettings,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(ThemeChanged value)? themeChanged,
    TResult? Function(UpdateSettings value)? updateSettings,
  }) {
    return signOutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DifficultyChanged value)? difficultyChanged,
    TResult Function(GoalDateChanged value)? goalDateChanged,
    TResult Function(InitializeSettings value)? intializeSettings,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(ThemeChanged value)? themeChanged,
    TResult Function(UpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) {
    if (signOutRequested != null) {
      return signOutRequested(this);
    }
    return orElse();
  }
}

abstract class SignOutRequested implements SettingsEvent {
  const factory SignOutRequested() = _$SignOutRequested;
}

/// @nodoc
abstract class _$$ThemeChangedCopyWith<$Res> {
  factory _$$ThemeChangedCopyWith(
          _$ThemeChanged value, $Res Function(_$ThemeChanged) then) =
      __$$ThemeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$ThemeChangedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$ThemeChanged>
    implements _$$ThemeChangedCopyWith<$Res> {
  __$$ThemeChangedCopyWithImpl(
      _$ThemeChanged _value, $Res Function(_$ThemeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$ThemeChanged(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$ThemeChanged implements ThemeChanged {
  const _$ThemeChanged({required this.themeMode});

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'SettingsEvent.themeChanged(themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeChanged &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeChangedCopyWith<_$ThemeChanged> get copyWith =>
      __$$ThemeChangedCopyWithImpl<_$ThemeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> category) categoryChanged,
    required TResult Function(List<Difficulty> difficulty) difficultyChanged,
    required TResult Function(int goalDate) goalDateChanged,
    required TResult Function() intializeSettings,
    required TResult Function() signOutRequested,
    required TResult Function(ThemeMode themeMode) themeChanged,
    required TResult Function(Settings settings) updateSettings,
  }) {
    return themeChanged(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> category)? categoryChanged,
    TResult? Function(List<Difficulty> difficulty)? difficultyChanged,
    TResult? Function(int goalDate)? goalDateChanged,
    TResult? Function()? intializeSettings,
    TResult? Function()? signOutRequested,
    TResult? Function(ThemeMode themeMode)? themeChanged,
    TResult? Function(Settings settings)? updateSettings,
  }) {
    return themeChanged?.call(themeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> category)? categoryChanged,
    TResult Function(List<Difficulty> difficulty)? difficultyChanged,
    TResult Function(int goalDate)? goalDateChanged,
    TResult Function()? intializeSettings,
    TResult Function()? signOutRequested,
    TResult Function(ThemeMode themeMode)? themeChanged,
    TResult Function(Settings settings)? updateSettings,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(themeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DifficultyChanged value) difficultyChanged,
    required TResult Function(GoalDateChanged value) goalDateChanged,
    required TResult Function(InitializeSettings value) intializeSettings,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(ThemeChanged value) themeChanged,
    required TResult Function(UpdateSettings value) updateSettings,
  }) {
    return themeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(DifficultyChanged value)? difficultyChanged,
    TResult? Function(GoalDateChanged value)? goalDateChanged,
    TResult? Function(InitializeSettings value)? intializeSettings,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(ThemeChanged value)? themeChanged,
    TResult? Function(UpdateSettings value)? updateSettings,
  }) {
    return themeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DifficultyChanged value)? difficultyChanged,
    TResult Function(GoalDateChanged value)? goalDateChanged,
    TResult Function(InitializeSettings value)? intializeSettings,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(ThemeChanged value)? themeChanged,
    TResult Function(UpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(this);
    }
    return orElse();
  }
}

abstract class ThemeChanged implements SettingsEvent {
  const factory ThemeChanged({required final ThemeMode themeMode}) =
      _$ThemeChanged;

  ThemeMode get themeMode;
  @JsonKey(ignore: true)
  _$$ThemeChangedCopyWith<_$ThemeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSettingsCopyWith<$Res> {
  factory _$$UpdateSettingsCopyWith(
          _$UpdateSettings value, $Res Function(_$UpdateSettings) then) =
      __$$UpdateSettingsCopyWithImpl<$Res>;
  @useResult
  $Res call({Settings settings});

  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$UpdateSettingsCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$UpdateSettings>
    implements _$$UpdateSettingsCopyWith<$Res> {
  __$$UpdateSettingsCopyWithImpl(
      _$UpdateSettings _value, $Res Function(_$UpdateSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_$UpdateSettings(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }
}

/// @nodoc

class _$UpdateSettings implements UpdateSettings {
  const _$UpdateSettings({required this.settings});

  @override
  final Settings settings;

  @override
  String toString() {
    return 'SettingsEvent.updateSettings(settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSettings &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSettingsCopyWith<_$UpdateSettings> get copyWith =>
      __$$UpdateSettingsCopyWithImpl<_$UpdateSettings>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> category) categoryChanged,
    required TResult Function(List<Difficulty> difficulty) difficultyChanged,
    required TResult Function(int goalDate) goalDateChanged,
    required TResult Function() intializeSettings,
    required TResult Function() signOutRequested,
    required TResult Function(ThemeMode themeMode) themeChanged,
    required TResult Function(Settings settings) updateSettings,
  }) {
    return updateSettings(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> category)? categoryChanged,
    TResult? Function(List<Difficulty> difficulty)? difficultyChanged,
    TResult? Function(int goalDate)? goalDateChanged,
    TResult? Function()? intializeSettings,
    TResult? Function()? signOutRequested,
    TResult? Function(ThemeMode themeMode)? themeChanged,
    TResult? Function(Settings settings)? updateSettings,
  }) {
    return updateSettings?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> category)? categoryChanged,
    TResult Function(List<Difficulty> difficulty)? difficultyChanged,
    TResult Function(int goalDate)? goalDateChanged,
    TResult Function()? intializeSettings,
    TResult Function()? signOutRequested,
    TResult Function(ThemeMode themeMode)? themeChanged,
    TResult Function(Settings settings)? updateSettings,
    required TResult orElse(),
  }) {
    if (updateSettings != null) {
      return updateSettings(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryChanged value) categoryChanged,
    required TResult Function(DifficultyChanged value) difficultyChanged,
    required TResult Function(GoalDateChanged value) goalDateChanged,
    required TResult Function(InitializeSettings value) intializeSettings,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(ThemeChanged value) themeChanged,
    required TResult Function(UpdateSettings value) updateSettings,
  }) {
    return updateSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryChanged value)? categoryChanged,
    TResult? Function(DifficultyChanged value)? difficultyChanged,
    TResult? Function(GoalDateChanged value)? goalDateChanged,
    TResult? Function(InitializeSettings value)? intializeSettings,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(ThemeChanged value)? themeChanged,
    TResult? Function(UpdateSettings value)? updateSettings,
  }) {
    return updateSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryChanged value)? categoryChanged,
    TResult Function(DifficultyChanged value)? difficultyChanged,
    TResult Function(GoalDateChanged value)? goalDateChanged,
    TResult Function(InitializeSettings value)? intializeSettings,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(ThemeChanged value)? themeChanged,
    TResult Function(UpdateSettings value)? updateSettings,
    required TResult orElse(),
  }) {
    if (updateSettings != null) {
      return updateSettings(this);
    }
    return orElse();
  }
}

abstract class UpdateSettings implements SettingsEvent {
  const factory UpdateSettings({required final Settings settings}) =
      _$UpdateSettings;

  Settings get settings;
  @JsonKey(ignore: true)
  _$$UpdateSettingsCopyWith<_$UpdateSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingsState {
  Settings get settings => throw _privateConstructorUsedError;
  SettingStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({Settings settings, SettingStatus status});

  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SettingStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsCopyWith<$Res> get settings {
    return $SettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$_SettingsStateCopyWith(
          _$_SettingsState value, $Res Function(_$_SettingsState) then) =
      __$$_SettingsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Settings settings, SettingStatus status});

  @override
  $SettingsCopyWith<$Res> get settings;
}

/// @nodoc
class __$$_SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$_SettingsState>
    implements _$$_SettingsStateCopyWith<$Res> {
  __$$_SettingsStateCopyWithImpl(
      _$_SettingsState _value, $Res Function(_$_SettingsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
    Object? status = null,
  }) {
    return _then(_$_SettingsState(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SettingStatus,
    ));
  }
}

/// @nodoc

class _$_SettingsState implements _SettingsState {
  const _$_SettingsState({required this.settings, required this.status});

  @override
  final Settings settings;
  @override
  final SettingStatus status;

  @override
  String toString() {
    return 'SettingsState(settings: $settings, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsState &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      __$$_SettingsStateCopyWithImpl<_$_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {required final Settings settings,
      required final SettingStatus status}) = _$_SettingsState;

  @override
  Settings get settings;
  @override
  SettingStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
