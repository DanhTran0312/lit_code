// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchQuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchQuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchQuestions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchQuestions value) fetchQuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchQuestions value)? fetchQuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchQuestions value)? fetchQuestions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionListEventCopyWith<$Res> {
  factory $QuestionListEventCopyWith(
          QuestionListEvent value, $Res Function(QuestionListEvent) then) =
      _$QuestionListEventCopyWithImpl<$Res, QuestionListEvent>;
}

/// @nodoc
class _$QuestionListEventCopyWithImpl<$Res, $Val extends QuestionListEvent>
    implements $QuestionListEventCopyWith<$Res> {
  _$QuestionListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchQuestionsCopyWith<$Res> {
  factory _$$FetchQuestionsCopyWith(
          _$FetchQuestions value, $Res Function(_$FetchQuestions) then) =
      __$$FetchQuestionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchQuestionsCopyWithImpl<$Res>
    extends _$QuestionListEventCopyWithImpl<$Res, _$FetchQuestions>
    implements _$$FetchQuestionsCopyWith<$Res> {
  __$$FetchQuestionsCopyWithImpl(
      _$FetchQuestions _value, $Res Function(_$FetchQuestions) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchQuestions implements FetchQuestions {
  const _$FetchQuestions();

  @override
  String toString() {
    return 'QuestionListEvent.fetchQuestions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchQuestions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchQuestions,
  }) {
    return fetchQuestions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchQuestions,
  }) {
    return fetchQuestions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchQuestions,
    required TResult orElse(),
  }) {
    if (fetchQuestions != null) {
      return fetchQuestions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchQuestions value) fetchQuestions,
  }) {
    return fetchQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchQuestions value)? fetchQuestions,
  }) {
    return fetchQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchQuestions value)? fetchQuestions,
    required TResult orElse(),
  }) {
    if (fetchQuestions != null) {
      return fetchQuestions(this);
    }
    return orElse();
  }
}

abstract class FetchQuestions implements QuestionListEvent {
  const factory FetchQuestions() = _$FetchQuestions;
}

/// @nodoc
mixin _$QuestionListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Question> questions) questionListLoaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Question> questions)? questionListLoaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Question> questions)? questionListLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionListInitial value) initial,
    required TResult Function(QuestionListLoading value) loading,
    required TResult Function(QuestionListLoaded value) questionListLoaded,
    required TResult Function(QuestionListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionListInitial value)? initial,
    TResult? Function(QuestionListLoading value)? loading,
    TResult? Function(QuestionListLoaded value)? questionListLoaded,
    TResult? Function(QuestionListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionListInitial value)? initial,
    TResult Function(QuestionListLoading value)? loading,
    TResult Function(QuestionListLoaded value)? questionListLoaded,
    TResult Function(QuestionListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionListStateCopyWith<$Res> {
  factory $QuestionListStateCopyWith(
          QuestionListState value, $Res Function(QuestionListState) then) =
      _$QuestionListStateCopyWithImpl<$Res, QuestionListState>;
}

/// @nodoc
class _$QuestionListStateCopyWithImpl<$Res, $Val extends QuestionListState>
    implements $QuestionListStateCopyWith<$Res> {
  _$QuestionListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QuestionListInitialCopyWith<$Res> {
  factory _$$QuestionListInitialCopyWith(_$QuestionListInitial value,
          $Res Function(_$QuestionListInitial) then) =
      __$$QuestionListInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionListInitialCopyWithImpl<$Res>
    extends _$QuestionListStateCopyWithImpl<$Res, _$QuestionListInitial>
    implements _$$QuestionListInitialCopyWith<$Res> {
  __$$QuestionListInitialCopyWithImpl(
      _$QuestionListInitial _value, $Res Function(_$QuestionListInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuestionListInitial implements QuestionListInitial {
  const _$QuestionListInitial();

  @override
  String toString() {
    return 'QuestionListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuestionListInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Question> questions) questionListLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Question> questions)? questionListLoaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Question> questions)? questionListLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionListInitial value) initial,
    required TResult Function(QuestionListLoading value) loading,
    required TResult Function(QuestionListLoaded value) questionListLoaded,
    required TResult Function(QuestionListError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionListInitial value)? initial,
    TResult? Function(QuestionListLoading value)? loading,
    TResult? Function(QuestionListLoaded value)? questionListLoaded,
    TResult? Function(QuestionListError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionListInitial value)? initial,
    TResult Function(QuestionListLoading value)? loading,
    TResult Function(QuestionListLoaded value)? questionListLoaded,
    TResult Function(QuestionListError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class QuestionListInitial implements QuestionListState {
  const factory QuestionListInitial() = _$QuestionListInitial;
}

/// @nodoc
abstract class _$$QuestionListLoadingCopyWith<$Res> {
  factory _$$QuestionListLoadingCopyWith(_$QuestionListLoading value,
          $Res Function(_$QuestionListLoading) then) =
      __$$QuestionListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionListLoadingCopyWithImpl<$Res>
    extends _$QuestionListStateCopyWithImpl<$Res, _$QuestionListLoading>
    implements _$$QuestionListLoadingCopyWith<$Res> {
  __$$QuestionListLoadingCopyWithImpl(
      _$QuestionListLoading _value, $Res Function(_$QuestionListLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuestionListLoading implements QuestionListLoading {
  const _$QuestionListLoading();

  @override
  String toString() {
    return 'QuestionListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuestionListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Question> questions) questionListLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Question> questions)? questionListLoaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Question> questions)? questionListLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionListInitial value) initial,
    required TResult Function(QuestionListLoading value) loading,
    required TResult Function(QuestionListLoaded value) questionListLoaded,
    required TResult Function(QuestionListError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionListInitial value)? initial,
    TResult? Function(QuestionListLoading value)? loading,
    TResult? Function(QuestionListLoaded value)? questionListLoaded,
    TResult? Function(QuestionListError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionListInitial value)? initial,
    TResult Function(QuestionListLoading value)? loading,
    TResult Function(QuestionListLoaded value)? questionListLoaded,
    TResult Function(QuestionListError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class QuestionListLoading implements QuestionListState {
  const factory QuestionListLoading() = _$QuestionListLoading;
}

/// @nodoc
abstract class _$$QuestionListLoadedCopyWith<$Res> {
  factory _$$QuestionListLoadedCopyWith(_$QuestionListLoaded value,
          $Res Function(_$QuestionListLoaded) then) =
      __$$QuestionListLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Question> questions});
}

/// @nodoc
class __$$QuestionListLoadedCopyWithImpl<$Res>
    extends _$QuestionListStateCopyWithImpl<$Res, _$QuestionListLoaded>
    implements _$$QuestionListLoadedCopyWith<$Res> {
  __$$QuestionListLoadedCopyWithImpl(
      _$QuestionListLoaded _value, $Res Function(_$QuestionListLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
  }) {
    return _then(_$QuestionListLoaded(
      null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$QuestionListLoaded implements QuestionListLoaded {
  const _$QuestionListLoaded(final List<Question> questions)
      : _questions = questions;

  final List<Question> _questions;
  @override
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'QuestionListState.questionListLoaded(questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionListLoaded &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionListLoadedCopyWith<_$QuestionListLoaded> get copyWith =>
      __$$QuestionListLoadedCopyWithImpl<_$QuestionListLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Question> questions) questionListLoaded,
    required TResult Function(String message) error,
  }) {
    return questionListLoaded(questions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Question> questions)? questionListLoaded,
    TResult? Function(String message)? error,
  }) {
    return questionListLoaded?.call(questions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Question> questions)? questionListLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (questionListLoaded != null) {
      return questionListLoaded(questions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionListInitial value) initial,
    required TResult Function(QuestionListLoading value) loading,
    required TResult Function(QuestionListLoaded value) questionListLoaded,
    required TResult Function(QuestionListError value) error,
  }) {
    return questionListLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionListInitial value)? initial,
    TResult? Function(QuestionListLoading value)? loading,
    TResult? Function(QuestionListLoaded value)? questionListLoaded,
    TResult? Function(QuestionListError value)? error,
  }) {
    return questionListLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionListInitial value)? initial,
    TResult Function(QuestionListLoading value)? loading,
    TResult Function(QuestionListLoaded value)? questionListLoaded,
    TResult Function(QuestionListError value)? error,
    required TResult orElse(),
  }) {
    if (questionListLoaded != null) {
      return questionListLoaded(this);
    }
    return orElse();
  }
}

abstract class QuestionListLoaded implements QuestionListState {
  const factory QuestionListLoaded(final List<Question> questions) =
      _$QuestionListLoaded;

  List<Question> get questions;
  @JsonKey(ignore: true)
  _$$QuestionListLoadedCopyWith<_$QuestionListLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionListErrorCopyWith<$Res> {
  factory _$$QuestionListErrorCopyWith(
          _$QuestionListError value, $Res Function(_$QuestionListError) then) =
      __$$QuestionListErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$QuestionListErrorCopyWithImpl<$Res>
    extends _$QuestionListStateCopyWithImpl<$Res, _$QuestionListError>
    implements _$$QuestionListErrorCopyWith<$Res> {
  __$$QuestionListErrorCopyWithImpl(
      _$QuestionListError _value, $Res Function(_$QuestionListError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$QuestionListError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuestionListError implements QuestionListError {
  const _$QuestionListError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'QuestionListState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionListError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionListErrorCopyWith<_$QuestionListError> get copyWith =>
      __$$QuestionListErrorCopyWithImpl<_$QuestionListError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Question> questions) questionListLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Question> questions)? questionListLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Question> questions)? questionListLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionListInitial value) initial,
    required TResult Function(QuestionListLoading value) loading,
    required TResult Function(QuestionListLoaded value) questionListLoaded,
    required TResult Function(QuestionListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionListInitial value)? initial,
    TResult? Function(QuestionListLoading value)? loading,
    TResult? Function(QuestionListLoaded value)? questionListLoaded,
    TResult? Function(QuestionListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionListInitial value)? initial,
    TResult Function(QuestionListLoading value)? loading,
    TResult Function(QuestionListLoaded value)? questionListLoaded,
    TResult Function(QuestionListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class QuestionListError implements QuestionListState {
  const factory QuestionListError(final String message) = _$QuestionListError;

  String get message;
  @JsonKey(ignore: true)
  _$$QuestionListErrorCopyWith<_$QuestionListError> get copyWith =>
      throw _privateConstructorUsedError;
}
