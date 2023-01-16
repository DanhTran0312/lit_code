// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_connection_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkConnectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkInitial value) initial,
    required TResult Function(NetworkConnected value) connected,
    required TResult Function(NetworkDisconnected value) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkInitial value)? initial,
    TResult? Function(NetworkConnected value)? connected,
    TResult? Function(NetworkDisconnected value)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkInitial value)? initial,
    TResult Function(NetworkConnected value)? connected,
    TResult Function(NetworkDisconnected value)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkConnectionStateCopyWith<$Res> {
  factory $NetworkConnectionStateCopyWith(NetworkConnectionState value,
          $Res Function(NetworkConnectionState) then) =
      _$NetworkConnectionStateCopyWithImpl<$Res, NetworkConnectionState>;
}

/// @nodoc
class _$NetworkConnectionStateCopyWithImpl<$Res,
        $Val extends NetworkConnectionState>
    implements $NetworkConnectionStateCopyWith<$Res> {
  _$NetworkConnectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NetworkInitialCopyWith<$Res> {
  factory _$$NetworkInitialCopyWith(
          _$NetworkInitial value, $Res Function(_$NetworkInitial) then) =
      __$$NetworkInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkInitialCopyWithImpl<$Res>
    extends _$NetworkConnectionStateCopyWithImpl<$Res, _$NetworkInitial>
    implements _$$NetworkInitialCopyWith<$Res> {
  __$$NetworkInitialCopyWithImpl(
      _$NetworkInitial _value, $Res Function(_$NetworkInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkInitial implements NetworkInitial {
  const _$NetworkInitial();

  @override
  String toString() {
    return 'NetworkConnectionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
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
    required TResult Function(NetworkInitial value) initial,
    required TResult Function(NetworkConnected value) connected,
    required TResult Function(NetworkDisconnected value) disconnected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkInitial value)? initial,
    TResult? Function(NetworkConnected value)? connected,
    TResult? Function(NetworkDisconnected value)? disconnected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkInitial value)? initial,
    TResult Function(NetworkConnected value)? connected,
    TResult Function(NetworkDisconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NetworkInitial implements NetworkConnectionState {
  const factory NetworkInitial() = _$NetworkInitial;
}

/// @nodoc
abstract class _$$NetworkConnectedCopyWith<$Res> {
  factory _$$NetworkConnectedCopyWith(
          _$NetworkConnected value, $Res Function(_$NetworkConnected) then) =
      __$$NetworkConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkConnectedCopyWithImpl<$Res>
    extends _$NetworkConnectionStateCopyWithImpl<$Res, _$NetworkConnected>
    implements _$$NetworkConnectedCopyWith<$Res> {
  __$$NetworkConnectedCopyWithImpl(
      _$NetworkConnected _value, $Res Function(_$NetworkConnected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkConnected implements NetworkConnected {
  const _$NetworkConnected();

  @override
  String toString() {
    return 'NetworkConnectionState.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkConnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkInitial value) initial,
    required TResult Function(NetworkConnected value) connected,
    required TResult Function(NetworkDisconnected value) disconnected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkInitial value)? initial,
    TResult? Function(NetworkConnected value)? connected,
    TResult? Function(NetworkDisconnected value)? disconnected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkInitial value)? initial,
    TResult Function(NetworkConnected value)? connected,
    TResult Function(NetworkDisconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class NetworkConnected implements NetworkConnectionState {
  const factory NetworkConnected() = _$NetworkConnected;
}

/// @nodoc
abstract class _$$NetworkDisconnectedCopyWith<$Res> {
  factory _$$NetworkDisconnectedCopyWith(_$NetworkDisconnected value,
          $Res Function(_$NetworkDisconnected) then) =
      __$$NetworkDisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkDisconnectedCopyWithImpl<$Res>
    extends _$NetworkConnectionStateCopyWithImpl<$Res, _$NetworkDisconnected>
    implements _$$NetworkDisconnectedCopyWith<$Res> {
  __$$NetworkDisconnectedCopyWithImpl(
      _$NetworkDisconnected _value, $Res Function(_$NetworkDisconnected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkDisconnected implements NetworkDisconnected {
  const _$NetworkDisconnected();

  @override
  String toString() {
    return 'NetworkConnectionState.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkDisconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connected,
    TResult? Function()? disconnected,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkInitial value) initial,
    required TResult Function(NetworkConnected value) connected,
    required TResult Function(NetworkDisconnected value) disconnected,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NetworkInitial value)? initial,
    TResult? Function(NetworkConnected value)? connected,
    TResult? Function(NetworkDisconnected value)? disconnected,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkInitial value)? initial,
    TResult Function(NetworkConnected value)? connected,
    TResult Function(NetworkDisconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class NetworkDisconnected implements NetworkConnectionState {
  const factory NetworkDisconnected() = _$NetworkDisconnected;
}
