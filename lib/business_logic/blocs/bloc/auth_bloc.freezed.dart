// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function() signOutRequested,
    required TResult Function() googleSignInRequested,
    required TResult Function() authCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function()? signOutRequested,
    TResult? Function()? googleSignInRequested,
    TResult? Function()? authCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password)? signUpRequested,
    TResult Function()? signOutRequested,
    TResult Function()? googleSignInRequested,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(GoogleSignInRequested value)
        googleSignInRequested,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult? Function(AuthCheckRequested value)? authCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInRequestedCopyWith<$Res> {
  factory _$$SignInRequestedCopyWith(
          _$SignInRequested value, $Res Function(_$SignInRequested) then) =
      __$$SignInRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInRequested>
    implements _$$SignInRequestedCopyWith<$Res> {
  __$$SignInRequestedCopyWithImpl(
      _$SignInRequested _value, $Res Function(_$SignInRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInRequested(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInRequested implements SignInRequested {
  const _$SignInRequested({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signInRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInRequested &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInRequestedCopyWith<_$SignInRequested> get copyWith =>
      __$$SignInRequestedCopyWithImpl<_$SignInRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function() signOutRequested,
    required TResult Function() googleSignInRequested,
    required TResult Function() authCheckRequested,
  }) {
    return signInRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function()? signOutRequested,
    TResult? Function()? googleSignInRequested,
    TResult? Function()? authCheckRequested,
  }) {
    return signInRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password)? signUpRequested,
    TResult Function()? signOutRequested,
    TResult Function()? googleSignInRequested,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (signInRequested != null) {
      return signInRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(GoogleSignInRequested value)
        googleSignInRequested,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
  }) {
    return signInRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult? Function(AuthCheckRequested value)? authCheckRequested,
  }) {
    return signInRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (signInRequested != null) {
      return signInRequested(this);
    }
    return orElse();
  }
}

abstract class SignInRequested implements AuthEvent {
  const factory SignInRequested(
      {required final String email,
      required final String password}) = _$SignInRequested;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInRequestedCopyWith<_$SignInRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpRequestedCopyWith<$Res> {
  factory _$$SignUpRequestedCopyWith(
          _$SignUpRequested value, $Res Function(_$SignUpRequested) then) =
      __$$SignUpRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignUpRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpRequested>
    implements _$$SignUpRequestedCopyWith<$Res> {
  __$$SignUpRequestedCopyWithImpl(
      _$SignUpRequested _value, $Res Function(_$SignUpRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignUpRequested(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpRequested implements SignUpRequested {
  const _$SignUpRequested({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signUpRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpRequested &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpRequestedCopyWith<_$SignUpRequested> get copyWith =>
      __$$SignUpRequestedCopyWithImpl<_$SignUpRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function() signOutRequested,
    required TResult Function() googleSignInRequested,
    required TResult Function() authCheckRequested,
  }) {
    return signUpRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function()? signOutRequested,
    TResult? Function()? googleSignInRequested,
    TResult? Function()? authCheckRequested,
  }) {
    return signUpRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password)? signUpRequested,
    TResult Function()? signOutRequested,
    TResult Function()? googleSignInRequested,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (signUpRequested != null) {
      return signUpRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(GoogleSignInRequested value)
        googleSignInRequested,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
  }) {
    return signUpRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult? Function(AuthCheckRequested value)? authCheckRequested,
  }) {
    return signUpRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (signUpRequested != null) {
      return signUpRequested(this);
    }
    return orElse();
  }
}

abstract class SignUpRequested implements AuthEvent {
  const factory SignUpRequested(
      {required final String email,
      required final String password}) = _$SignUpRequested;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignUpRequestedCopyWith<_$SignUpRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutRequestedCopyWith<$Res> {
  factory _$$SignOutRequestedCopyWith(
          _$SignOutRequested value, $Res Function(_$SignOutRequested) then) =
      __$$SignOutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutRequested>
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
    return 'AuthEvent.signOutRequested()';
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
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function() signOutRequested,
    required TResult Function() googleSignInRequested,
    required TResult Function() authCheckRequested,
  }) {
    return signOutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function()? signOutRequested,
    TResult? Function()? googleSignInRequested,
    TResult? Function()? authCheckRequested,
  }) {
    return signOutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password)? signUpRequested,
    TResult Function()? signOutRequested,
    TResult Function()? googleSignInRequested,
    TResult Function()? authCheckRequested,
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
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(GoogleSignInRequested value)
        googleSignInRequested,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
  }) {
    return signOutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult? Function(AuthCheckRequested value)? authCheckRequested,
  }) {
    return signOutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (signOutRequested != null) {
      return signOutRequested(this);
    }
    return orElse();
  }
}

abstract class SignOutRequested implements AuthEvent {
  const factory SignOutRequested() = _$SignOutRequested;
}

/// @nodoc
abstract class _$$GoogleSignInRequestedCopyWith<$Res> {
  factory _$$GoogleSignInRequestedCopyWith(_$GoogleSignInRequested value,
          $Res Function(_$GoogleSignInRequested) then) =
      __$$GoogleSignInRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleSignInRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GoogleSignInRequested>
    implements _$$GoogleSignInRequestedCopyWith<$Res> {
  __$$GoogleSignInRequestedCopyWithImpl(_$GoogleSignInRequested _value,
      $Res Function(_$GoogleSignInRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleSignInRequested implements GoogleSignInRequested {
  const _$GoogleSignInRequested();

  @override
  String toString() {
    return 'AuthEvent.googleSignInRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoogleSignInRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function() signOutRequested,
    required TResult Function() googleSignInRequested,
    required TResult Function() authCheckRequested,
  }) {
    return googleSignInRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function()? signOutRequested,
    TResult? Function()? googleSignInRequested,
    TResult? Function()? authCheckRequested,
  }) {
    return googleSignInRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password)? signUpRequested,
    TResult Function()? signOutRequested,
    TResult Function()? googleSignInRequested,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (googleSignInRequested != null) {
      return googleSignInRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(GoogleSignInRequested value)
        googleSignInRequested,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
  }) {
    return googleSignInRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult? Function(AuthCheckRequested value)? authCheckRequested,
  }) {
    return googleSignInRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (googleSignInRequested != null) {
      return googleSignInRequested(this);
    }
    return orElse();
  }
}

abstract class GoogleSignInRequested implements AuthEvent {
  const factory GoogleSignInRequested() = _$GoogleSignInRequested;
}

/// @nodoc
abstract class _$$AuthCheckRequestedCopyWith<$Res> {
  factory _$$AuthCheckRequestedCopyWith(_$AuthCheckRequested value,
          $Res Function(_$AuthCheckRequested) then) =
      __$$AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthCheckRequested>
    implements _$$AuthCheckRequestedCopyWith<$Res> {
  __$$AuthCheckRequestedCopyWithImpl(
      _$AuthCheckRequested _value, $Res Function(_$AuthCheckRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthCheckRequested implements AuthCheckRequested {
  const _$AuthCheckRequested();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function() signOutRequested,
    required TResult Function() googleSignInRequested,
    required TResult Function() authCheckRequested,
  }) {
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function()? signOutRequested,
    TResult? Function()? googleSignInRequested,
    TResult? Function()? authCheckRequested,
  }) {
    return authCheckRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email, String password)? signUpRequested,
    TResult Function()? signOutRequested,
    TResult Function()? googleSignInRequested,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignInRequested value) signInRequested,
    required TResult Function(SignUpRequested value) signUpRequested,
    required TResult Function(SignOutRequested value) signOutRequested,
    required TResult Function(GoogleSignInRequested value)
        googleSignInRequested,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
  }) {
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignInRequested value)? signInRequested,
    TResult? Function(SignUpRequested value)? signUpRequested,
    TResult? Function(SignOutRequested value)? signOutRequested,
    TResult? Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult? Function(AuthCheckRequested value)? authCheckRequested,
  }) {
    return authCheckRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignInRequested value)? signInRequested,
    TResult Function(SignUpRequested value)? signUpRequested,
    TResult Function(SignOutRequested value)? signOutRequested,
    TResult Function(GoogleSignInRequested value)? googleSignInRequested,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class AuthCheckRequested implements AuthEvent {
  const factory AuthCheckRequested() = _$AuthCheckRequested;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User? user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) authError,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User? user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? authError,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? authError,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthError value) authError,
    required TResult Function(Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(AuthError value)? authError,
    TResult? Function(Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthError value)? authError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading extends Loading {
  const _$Loading() : super._();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User? user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) authError,
    required TResult Function() unknown,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User? user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? authError,
    TResult? Function()? unknown,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? authError,
    TResult Function()? unknown,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthError value) authError,
    required TResult Function(Unknown value) unknown,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(AuthError value)? authError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthError value)? authError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading extends AuthState {
  const factory Loading() = _$Loading;
  const Loading._() : super._();
}

/// @nodoc
abstract class _$$AuthenticatedCopyWith<$Res> {
  factory _$$AuthenticatedCopyWith(
          _$Authenticated value, $Res Function(_$Authenticated) then) =
      __$$AuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Authenticated>
    implements _$$AuthenticatedCopyWith<$Res> {
  __$$AuthenticatedCopyWithImpl(
      _$Authenticated _value, $Res Function(_$Authenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$Authenticated(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$Authenticated extends Authenticated {
  const _$Authenticated({required this.user}) : super._();

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Authenticated &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedCopyWith<_$Authenticated> get copyWith =>
      __$$AuthenticatedCopyWithImpl<_$Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User? user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) authError,
    required TResult Function() unknown,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User? user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? authError,
    TResult? Function()? unknown,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? authError,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthError value) authError,
    required TResult Function(Unknown value) unknown,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(AuthError value)? authError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthError value)? authError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated extends AuthState {
  const factory Authenticated({required final User? user}) = _$Authenticated;
  const Authenticated._() : super._();

  User? get user;
  @JsonKey(ignore: true)
  _$$AuthenticatedCopyWith<_$Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedCopyWith<$Res> {
  factory _$$UnauthenticatedCopyWith(
          _$Unauthenticated value, $Res Function(_$Unauthenticated) then) =
      __$$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Unauthenticated>
    implements _$$UnauthenticatedCopyWith<$Res> {
  __$$UnauthenticatedCopyWithImpl(
      _$Unauthenticated _value, $Res Function(_$Unauthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Unauthenticated extends Unauthenticated {
  const _$Unauthenticated() : super._();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User? user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) authError,
    required TResult Function() unknown,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User? user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? authError,
    TResult? Function()? unknown,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? authError,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthError value) authError,
    required TResult Function(Unknown value) unknown,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(AuthError value)? authError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthError value)? authError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated extends AuthState {
  const factory Unauthenticated() = _$Unauthenticated;
  const Unauthenticated._() : super._();
}

/// @nodoc
abstract class _$$AuthErrorCopyWith<$Res> {
  factory _$$AuthErrorCopyWith(
          _$AuthError value, $Res Function(_$AuthError) then) =
      __$$AuthErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AuthErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthError>
    implements _$$AuthErrorCopyWith<$Res> {
  __$$AuthErrorCopyWithImpl(
      _$AuthError _value, $Res Function(_$AuthError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AuthError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthError extends AuthError {
  const _$AuthError(this.error) : super._();

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.authError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthErrorCopyWith<_$AuthError> get copyWith =>
      __$$AuthErrorCopyWithImpl<_$AuthError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User? user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) authError,
    required TResult Function() unknown,
  }) {
    return authError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User? user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? authError,
    TResult? Function()? unknown,
  }) {
    return authError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? authError,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthError value) authError,
    required TResult Function(Unknown value) unknown,
  }) {
    return authError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(AuthError value)? authError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return authError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthError value)? authError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (authError != null) {
      return authError(this);
    }
    return orElse();
  }
}

abstract class AuthError extends AuthState {
  const factory AuthError(final String error) = _$AuthError;
  const AuthError._() : super._();

  String get error;
  @JsonKey(ignore: true)
  _$$AuthErrorCopyWith<_$AuthError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownCopyWith<$Res> {
  factory _$$UnknownCopyWith(_$Unknown value, $Res Function(_$Unknown) then) =
      __$$UnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Unknown>
    implements _$$UnknownCopyWith<$Res> {
  __$$UnknownCopyWithImpl(_$Unknown _value, $Res Function(_$Unknown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Unknown extends Unknown {
  const _$Unknown() : super._();

  @override
  String toString() {
    return 'AuthState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User? user) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String error) authError,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(User? user)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String error)? authError,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User? user)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String error)? authError,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(AuthError value) authError,
    required TResult Function(Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(AuthError value)? authError,
    TResult? Function(Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(AuthError value)? authError,
    TResult Function(Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown extends AuthState {
  const factory Unknown() = _$Unknown;
  const Unknown._() : super._();
}
