// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internet_connection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InternetConnectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() observeConnection,
    required TResult Function(bool isConnected) connectionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? observeConnection,
    TResult? Function(bool isConnected)? connectionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? observeConnection,
    TResult Function(bool isConnected)? connectionChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ObserveConnection value) observeConnection,
    required TResult Function(ConnectionChanged value) connectionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ObserveConnection value)? observeConnection,
    TResult? Function(ConnectionChanged value)? connectionChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ObserveConnection value)? observeConnection,
    TResult Function(ConnectionChanged value)? connectionChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetConnectionEventCopyWith<$Res> {
  factory $InternetConnectionEventCopyWith(InternetConnectionEvent value,
          $Res Function(InternetConnectionEvent) then) =
      _$InternetConnectionEventCopyWithImpl<$Res, InternetConnectionEvent>;
}

/// @nodoc
class _$InternetConnectionEventCopyWithImpl<$Res,
        $Val extends InternetConnectionEvent>
    implements $InternetConnectionEventCopyWith<$Res> {
  _$InternetConnectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ObserveConnectionCopyWith<$Res> {
  factory _$$ObserveConnectionCopyWith(
          _$ObserveConnection value, $Res Function(_$ObserveConnection) then) =
      __$$ObserveConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ObserveConnectionCopyWithImpl<$Res>
    extends _$InternetConnectionEventCopyWithImpl<$Res, _$ObserveConnection>
    implements _$$ObserveConnectionCopyWith<$Res> {
  __$$ObserveConnectionCopyWithImpl(
      _$ObserveConnection _value, $Res Function(_$ObserveConnection) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ObserveConnection implements ObserveConnection {
  const _$ObserveConnection();

  @override
  String toString() {
    return 'InternetConnectionEvent.observeConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ObserveConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() observeConnection,
    required TResult Function(bool isConnected) connectionChanged,
  }) {
    return observeConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? observeConnection,
    TResult? Function(bool isConnected)? connectionChanged,
  }) {
    return observeConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? observeConnection,
    TResult Function(bool isConnected)? connectionChanged,
    required TResult orElse(),
  }) {
    if (observeConnection != null) {
      return observeConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ObserveConnection value) observeConnection,
    required TResult Function(ConnectionChanged value) connectionChanged,
  }) {
    return observeConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ObserveConnection value)? observeConnection,
    TResult? Function(ConnectionChanged value)? connectionChanged,
  }) {
    return observeConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ObserveConnection value)? observeConnection,
    TResult Function(ConnectionChanged value)? connectionChanged,
    required TResult orElse(),
  }) {
    if (observeConnection != null) {
      return observeConnection(this);
    }
    return orElse();
  }
}

abstract class ObserveConnection implements InternetConnectionEvent {
  const factory ObserveConnection() = _$ObserveConnection;
}

/// @nodoc
abstract class _$$ConnectionChangedCopyWith<$Res> {
  factory _$$ConnectionChangedCopyWith(
          _$ConnectionChanged value, $Res Function(_$ConnectionChanged) then) =
      __$$ConnectionChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class __$$ConnectionChangedCopyWithImpl<$Res>
    extends _$InternetConnectionEventCopyWithImpl<$Res, _$ConnectionChanged>
    implements _$$ConnectionChangedCopyWith<$Res> {
  __$$ConnectionChangedCopyWithImpl(
      _$ConnectionChanged _value, $Res Function(_$ConnectionChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_$ConnectionChanged(
      null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ConnectionChanged implements ConnectionChanged {
  const _$ConnectionChanged(this.isConnected);

  @override
  final bool isConnected;

  @override
  String toString() {
    return 'InternetConnectionEvent.connectionChanged(isConnected: $isConnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionChanged &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionChangedCopyWith<_$ConnectionChanged> get copyWith =>
      __$$ConnectionChangedCopyWithImpl<_$ConnectionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() observeConnection,
    required TResult Function(bool isConnected) connectionChanged,
  }) {
    return connectionChanged(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? observeConnection,
    TResult? Function(bool isConnected)? connectionChanged,
  }) {
    return connectionChanged?.call(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? observeConnection,
    TResult Function(bool isConnected)? connectionChanged,
    required TResult orElse(),
  }) {
    if (connectionChanged != null) {
      return connectionChanged(isConnected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ObserveConnection value) observeConnection,
    required TResult Function(ConnectionChanged value) connectionChanged,
  }) {
    return connectionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ObserveConnection value)? observeConnection,
    TResult? Function(ConnectionChanged value)? connectionChanged,
  }) {
    return connectionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ObserveConnection value)? observeConnection,
    TResult Function(ConnectionChanged value)? connectionChanged,
    required TResult orElse(),
  }) {
    if (connectionChanged != null) {
      return connectionChanged(this);
    }
    return orElse();
  }
}

abstract class ConnectionChanged implements InternetConnectionEvent {
  const factory ConnectionChanged(final bool isConnected) = _$ConnectionChanged;

  bool get isConnected;
  @JsonKey(ignore: true)
  _$$ConnectionChangedCopyWith<_$ConnectionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InternetConnectionState {
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
    required TResult Function(Unknown value) initial,
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? initial,
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? initial,
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetConnectionStateCopyWith<$Res> {
  factory $InternetConnectionStateCopyWith(InternetConnectionState value,
          $Res Function(InternetConnectionState) then) =
      _$InternetConnectionStateCopyWithImpl<$Res, InternetConnectionState>;
}

/// @nodoc
class _$InternetConnectionStateCopyWithImpl<$Res,
        $Val extends InternetConnectionState>
    implements $InternetConnectionStateCopyWith<$Res> {
  _$InternetConnectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnknownCopyWith<$Res> {
  factory _$$UnknownCopyWith(_$Unknown value, $Res Function(_$Unknown) then) =
      __$$UnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownCopyWithImpl<$Res>
    extends _$InternetConnectionStateCopyWithImpl<$Res, _$Unknown>
    implements _$$UnknownCopyWith<$Res> {
  __$$UnknownCopyWithImpl(_$Unknown _value, $Res Function(_$Unknown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Unknown implements Unknown {
  const _$Unknown();

  @override
  String toString() {
    return 'InternetConnectionState.initial()';
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
    required TResult Function(Unknown value) initial,
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? initial,
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? initial,
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Unknown implements InternetConnectionState {
  const factory Unknown() = _$Unknown;
}

/// @nodoc
abstract class _$$ConnectedCopyWith<$Res> {
  factory _$$ConnectedCopyWith(
          _$Connected value, $Res Function(_$Connected) then) =
      __$$ConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectedCopyWithImpl<$Res>
    extends _$InternetConnectionStateCopyWithImpl<$Res, _$Connected>
    implements _$$ConnectedCopyWith<$Res> {
  __$$ConnectedCopyWithImpl(
      _$Connected _value, $Res Function(_$Connected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Connected implements Connected {
  const _$Connected();

  @override
  String toString() {
    return 'InternetConnectionState.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Connected);
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
    required TResult Function(Unknown value) initial,
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? initial,
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? initial,
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class Connected implements InternetConnectionState {
  const factory Connected() = _$Connected;
}

/// @nodoc
abstract class _$$DisconnectedCopyWith<$Res> {
  factory _$$DisconnectedCopyWith(
          _$Disconnected value, $Res Function(_$Disconnected) then) =
      __$$DisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectedCopyWithImpl<$Res>
    extends _$InternetConnectionStateCopyWithImpl<$Res, _$Disconnected>
    implements _$$DisconnectedCopyWith<$Res> {
  __$$DisconnectedCopyWithImpl(
      _$Disconnected _value, $Res Function(_$Disconnected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Disconnected implements Disconnected {
  const _$Disconnected();

  @override
  String toString() {
    return 'InternetConnectionState.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Disconnected);
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
    required TResult Function(Unknown value) initial,
    required TResult Function(Connected value) connected,
    required TResult Function(Disconnected value) disconnected,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unknown value)? initial,
    TResult? Function(Connected value)? connected,
    TResult? Function(Disconnected value)? disconnected,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unknown value)? initial,
    TResult Function(Connected value)? connected,
    TResult Function(Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class Disconnected implements InternetConnectionState {
  const factory Disconnected() = _$Disconnected;
}
