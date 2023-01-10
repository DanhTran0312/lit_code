// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchQuestion,
    required TResult Function(Question question) updateQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchQuestion,
    TResult? Function(Question question)? updateQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchQuestion,
    TResult Function(Question question)? updateQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchQuestionRequested value) fetchQuestion,
    required TResult Function(UpdateQuestionRequested value) updateQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchQuestionRequested value)? fetchQuestion,
    TResult? Function(UpdateQuestionRequested value)? updateQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchQuestionRequested value)? fetchQuestion,
    TResult Function(UpdateQuestionRequested value)? updateQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionEventCopyWith<$Res> {
  factory $QuestionEventCopyWith(
          QuestionEvent value, $Res Function(QuestionEvent) then) =
      _$QuestionEventCopyWithImpl<$Res, QuestionEvent>;
}

/// @nodoc
class _$QuestionEventCopyWithImpl<$Res, $Val extends QuestionEvent>
    implements $QuestionEventCopyWith<$Res> {
  _$QuestionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchQuestionRequestedCopyWith<$Res> {
  factory _$$FetchQuestionRequestedCopyWith(_$FetchQuestionRequested value,
          $Res Function(_$FetchQuestionRequested) then) =
      __$$FetchQuestionRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$FetchQuestionRequestedCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res, _$FetchQuestionRequested>
    implements _$$FetchQuestionRequestedCopyWith<$Res> {
  __$$FetchQuestionRequestedCopyWithImpl(_$FetchQuestionRequested _value,
      $Res Function(_$FetchQuestionRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FetchQuestionRequested(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchQuestionRequested implements FetchQuestionRequested {
  const _$FetchQuestionRequested(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'QuestionEvent.fetchQuestion(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchQuestionRequested &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchQuestionRequestedCopyWith<_$FetchQuestionRequested> get copyWith =>
      __$$FetchQuestionRequestedCopyWithImpl<_$FetchQuestionRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchQuestion,
    required TResult Function(Question question) updateQuestion,
  }) {
    return fetchQuestion(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchQuestion,
    TResult? Function(Question question)? updateQuestion,
  }) {
    return fetchQuestion?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchQuestion,
    TResult Function(Question question)? updateQuestion,
    required TResult orElse(),
  }) {
    if (fetchQuestion != null) {
      return fetchQuestion(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchQuestionRequested value) fetchQuestion,
    required TResult Function(UpdateQuestionRequested value) updateQuestion,
  }) {
    return fetchQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchQuestionRequested value)? fetchQuestion,
    TResult? Function(UpdateQuestionRequested value)? updateQuestion,
  }) {
    return fetchQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchQuestionRequested value)? fetchQuestion,
    TResult Function(UpdateQuestionRequested value)? updateQuestion,
    required TResult orElse(),
  }) {
    if (fetchQuestion != null) {
      return fetchQuestion(this);
    }
    return orElse();
  }
}

abstract class FetchQuestionRequested implements QuestionEvent {
  const factory FetchQuestionRequested(final String id) =
      _$FetchQuestionRequested;

  String get id;
  @JsonKey(ignore: true)
  _$$FetchQuestionRequestedCopyWith<_$FetchQuestionRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateQuestionRequestedCopyWith<$Res> {
  factory _$$UpdateQuestionRequestedCopyWith(_$UpdateQuestionRequested value,
          $Res Function(_$UpdateQuestionRequested) then) =
      __$$UpdateQuestionRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({Question question});

  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$UpdateQuestionRequestedCopyWithImpl<$Res>
    extends _$QuestionEventCopyWithImpl<$Res, _$UpdateQuestionRequested>
    implements _$$UpdateQuestionRequestedCopyWith<$Res> {
  __$$UpdateQuestionRequestedCopyWithImpl(_$UpdateQuestionRequested _value,
      $Res Function(_$UpdateQuestionRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$UpdateQuestionRequested(
      null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionCopyWith<$Res> get question {
    return $QuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$UpdateQuestionRequested implements UpdateQuestionRequested {
  const _$UpdateQuestionRequested(this.question);

  @override
  final Question question;

  @override
  String toString() {
    return 'QuestionEvent.updateQuestion(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuestionRequested &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQuestionRequestedCopyWith<_$UpdateQuestionRequested> get copyWith =>
      __$$UpdateQuestionRequestedCopyWithImpl<_$UpdateQuestionRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) fetchQuestion,
    required TResult Function(Question question) updateQuestion,
  }) {
    return updateQuestion(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? fetchQuestion,
    TResult? Function(Question question)? updateQuestion,
  }) {
    return updateQuestion?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? fetchQuestion,
    TResult Function(Question question)? updateQuestion,
    required TResult orElse(),
  }) {
    if (updateQuestion != null) {
      return updateQuestion(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchQuestionRequested value) fetchQuestion,
    required TResult Function(UpdateQuestionRequested value) updateQuestion,
  }) {
    return updateQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchQuestionRequested value)? fetchQuestion,
    TResult? Function(UpdateQuestionRequested value)? updateQuestion,
  }) {
    return updateQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchQuestionRequested value)? fetchQuestion,
    TResult Function(UpdateQuestionRequested value)? updateQuestion,
    required TResult orElse(),
  }) {
    if (updateQuestion != null) {
      return updateQuestion(this);
    }
    return orElse();
  }
}

abstract class UpdateQuestionRequested implements QuestionEvent {
  const factory UpdateQuestionRequested(final Question question) =
      _$UpdateQuestionRequested;

  Question get question;
  @JsonKey(ignore: true)
  _$$UpdateQuestionRequestedCopyWith<_$UpdateQuestionRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Question question) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Question question)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Question question)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionInitial value) initial,
    required TResult Function(QuestionLoading value) loading,
    required TResult Function(QuestionLoaded value) loaded,
    required TResult Function(QuestionError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionInitial value)? initial,
    TResult? Function(QuestionLoading value)? loading,
    TResult? Function(QuestionLoaded value)? loaded,
    TResult? Function(QuestionError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionInitial value)? initial,
    TResult Function(QuestionLoading value)? loading,
    TResult Function(QuestionLoaded value)? loaded,
    TResult Function(QuestionError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateCopyWith<$Res> {
  factory $QuestionStateCopyWith(
          QuestionState value, $Res Function(QuestionState) then) =
      _$QuestionStateCopyWithImpl<$Res, QuestionState>;
}

/// @nodoc
class _$QuestionStateCopyWithImpl<$Res, $Val extends QuestionState>
    implements $QuestionStateCopyWith<$Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QuestionInitialCopyWith<$Res> {
  factory _$$QuestionInitialCopyWith(
          _$QuestionInitial value, $Res Function(_$QuestionInitial) then) =
      __$$QuestionInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionInitialCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$QuestionInitial>
    implements _$$QuestionInitialCopyWith<$Res> {
  __$$QuestionInitialCopyWithImpl(
      _$QuestionInitial _value, $Res Function(_$QuestionInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuestionInitial implements QuestionInitial {
  const _$QuestionInitial();

  @override
  String toString() {
    return 'QuestionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuestionInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Question question) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Question question)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Question question)? loaded,
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
    required TResult Function(QuestionInitial value) initial,
    required TResult Function(QuestionLoading value) loading,
    required TResult Function(QuestionLoaded value) loaded,
    required TResult Function(QuestionError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionInitial value)? initial,
    TResult? Function(QuestionLoading value)? loading,
    TResult? Function(QuestionLoaded value)? loaded,
    TResult? Function(QuestionError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionInitial value)? initial,
    TResult Function(QuestionLoading value)? loading,
    TResult Function(QuestionLoaded value)? loaded,
    TResult Function(QuestionError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class QuestionInitial implements QuestionState {
  const factory QuestionInitial() = _$QuestionInitial;
}

/// @nodoc
abstract class _$$QuestionLoadingCopyWith<$Res> {
  factory _$$QuestionLoadingCopyWith(
          _$QuestionLoading value, $Res Function(_$QuestionLoading) then) =
      __$$QuestionLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionLoadingCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$QuestionLoading>
    implements _$$QuestionLoadingCopyWith<$Res> {
  __$$QuestionLoadingCopyWithImpl(
      _$QuestionLoading _value, $Res Function(_$QuestionLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuestionLoading implements QuestionLoading {
  const _$QuestionLoading();

  @override
  String toString() {
    return 'QuestionState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuestionLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Question question) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Question question)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Question question)? loaded,
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
    required TResult Function(QuestionInitial value) initial,
    required TResult Function(QuestionLoading value) loading,
    required TResult Function(QuestionLoaded value) loaded,
    required TResult Function(QuestionError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionInitial value)? initial,
    TResult? Function(QuestionLoading value)? loading,
    TResult? Function(QuestionLoaded value)? loaded,
    TResult? Function(QuestionError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionInitial value)? initial,
    TResult Function(QuestionLoading value)? loading,
    TResult Function(QuestionLoaded value)? loaded,
    TResult Function(QuestionError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class QuestionLoading implements QuestionState {
  const factory QuestionLoading() = _$QuestionLoading;
}

/// @nodoc
abstract class _$$QuestionLoadedCopyWith<$Res> {
  factory _$$QuestionLoadedCopyWith(
          _$QuestionLoaded value, $Res Function(_$QuestionLoaded) then) =
      __$$QuestionLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Question question});

  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$QuestionLoadedCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$QuestionLoaded>
    implements _$$QuestionLoadedCopyWith<$Res> {
  __$$QuestionLoadedCopyWithImpl(
      _$QuestionLoaded _value, $Res Function(_$QuestionLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$QuestionLoaded(
      null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionCopyWith<$Res> get question {
    return $QuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$QuestionLoaded implements QuestionLoaded {
  const _$QuestionLoaded(this.question);

  @override
  final Question question;

  @override
  String toString() {
    return 'QuestionState.loaded(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionLoaded &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionLoadedCopyWith<_$QuestionLoaded> get copyWith =>
      __$$QuestionLoadedCopyWithImpl<_$QuestionLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Question question) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Question question)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Question question)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionInitial value) initial,
    required TResult Function(QuestionLoading value) loading,
    required TResult Function(QuestionLoaded value) loaded,
    required TResult Function(QuestionError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionInitial value)? initial,
    TResult? Function(QuestionLoading value)? loading,
    TResult? Function(QuestionLoaded value)? loaded,
    TResult? Function(QuestionError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionInitial value)? initial,
    TResult Function(QuestionLoading value)? loading,
    TResult Function(QuestionLoaded value)? loaded,
    TResult Function(QuestionError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class QuestionLoaded implements QuestionState {
  const factory QuestionLoaded(final Question question) = _$QuestionLoaded;

  Question get question;
  @JsonKey(ignore: true)
  _$$QuestionLoadedCopyWith<_$QuestionLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionErrorCopyWith<$Res> {
  factory _$$QuestionErrorCopyWith(
          _$QuestionError value, $Res Function(_$QuestionError) then) =
      __$$QuestionErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$QuestionErrorCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res, _$QuestionError>
    implements _$$QuestionErrorCopyWith<$Res> {
  __$$QuestionErrorCopyWithImpl(
      _$QuestionError _value, $Res Function(_$QuestionError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$QuestionError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuestionError implements QuestionError {
  const _$QuestionError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'QuestionState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionErrorCopyWith<_$QuestionError> get copyWith =>
      __$$QuestionErrorCopyWithImpl<_$QuestionError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Question question) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Question question)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Question question)? loaded,
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
    required TResult Function(QuestionInitial value) initial,
    required TResult Function(QuestionLoading value) loading,
    required TResult Function(QuestionLoaded value) loaded,
    required TResult Function(QuestionError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionInitial value)? initial,
    TResult? Function(QuestionLoading value)? loading,
    TResult? Function(QuestionLoaded value)? loaded,
    TResult? Function(QuestionError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionInitial value)? initial,
    TResult Function(QuestionLoading value)? loading,
    TResult Function(QuestionLoaded value)? loaded,
    TResult Function(QuestionError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class QuestionError implements QuestionState {
  const factory QuestionError(final String message) = _$QuestionError;

  String get message;
  @JsonKey(ignore: true)
  _$$QuestionErrorCopyWith<_$QuestionError> get copyWith =>
      throw _privateConstructorUsedError;
}
