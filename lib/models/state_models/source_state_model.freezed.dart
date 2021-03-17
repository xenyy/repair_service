// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'source_state_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SourceStateTearOff {
  const _$SourceStateTearOff();

  Start<T> loading<T>() {
    return Start<T>();
  }

  NotLogged<T> notLogged<T>() {
    return NotLogged<T>();
  }

  Logged<T> logged<T>() {
    return Logged<T>();
  }
}

/// @nodoc
const $SourceState = _$SourceStateTearOff();

/// @nodoc
mixin _$SourceState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() notLogged,
    required TResult Function() logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notLogged,
    TResult Function()? logged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Start<T> value) loading,
    required TResult Function(NotLogged<T> value) notLogged,
    required TResult Function(Logged<T> value) logged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start<T> value)? loading,
    TResult Function(NotLogged<T> value)? notLogged,
    TResult Function(Logged<T> value)? logged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceStateCopyWith<T, $Res> {
  factory $SourceStateCopyWith(
          SourceState<T> value, $Res Function(SourceState<T>) then) =
      _$SourceStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$SourceStateCopyWithImpl<T, $Res>
    implements $SourceStateCopyWith<T, $Res> {
  _$SourceStateCopyWithImpl(this._value, this._then);

  final SourceState<T> _value;
  // ignore: unused_field
  final $Res Function(SourceState<T>) _then;
}

/// @nodoc
abstract class $StartCopyWith<T, $Res> {
  factory $StartCopyWith(Start<T> value, $Res Function(Start<T>) then) =
      _$StartCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$StartCopyWithImpl<T, $Res> extends _$SourceStateCopyWithImpl<T, $Res>
    implements $StartCopyWith<T, $Res> {
  _$StartCopyWithImpl(Start<T> _value, $Res Function(Start<T>) _then)
      : super(_value, (v) => _then(v as Start<T>));

  @override
  Start<T> get _value => super._value as Start<T>;
}

/// @nodoc
class _$Start<T> extends Start<T> {
  const _$Start() : super._();

  @override
  String toString() {
    return 'SourceState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Start<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() notLogged,
    required TResult Function() logged,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notLogged,
    TResult Function()? logged,
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
    required TResult Function(Start<T> value) loading,
    required TResult Function(NotLogged<T> value) notLogged,
    required TResult Function(Logged<T> value) logged,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start<T> value)? loading,
    TResult Function(NotLogged<T> value)? notLogged,
    TResult Function(Logged<T> value)? logged,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Start<T> extends SourceState<T> {
  const factory Start() = _$Start<T>;
  const Start._() : super._();
}

/// @nodoc
abstract class $NotLoggedCopyWith<T, $Res> {
  factory $NotLoggedCopyWith(
          NotLogged<T> value, $Res Function(NotLogged<T>) then) =
      _$NotLoggedCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$NotLoggedCopyWithImpl<T, $Res>
    extends _$SourceStateCopyWithImpl<T, $Res>
    implements $NotLoggedCopyWith<T, $Res> {
  _$NotLoggedCopyWithImpl(
      NotLogged<T> _value, $Res Function(NotLogged<T>) _then)
      : super(_value, (v) => _then(v as NotLogged<T>));

  @override
  NotLogged<T> get _value => super._value as NotLogged<T>;
}

/// @nodoc
class _$NotLogged<T> extends NotLogged<T> {
  const _$NotLogged() : super._();

  @override
  String toString() {
    return 'SourceState<$T>.notLogged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotLogged<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() notLogged,
    required TResult Function() logged,
  }) {
    return notLogged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notLogged,
    TResult Function()? logged,
    required TResult orElse(),
  }) {
    if (notLogged != null) {
      return notLogged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Start<T> value) loading,
    required TResult Function(NotLogged<T> value) notLogged,
    required TResult Function(Logged<T> value) logged,
  }) {
    return notLogged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start<T> value)? loading,
    TResult Function(NotLogged<T> value)? notLogged,
    TResult Function(Logged<T> value)? logged,
    required TResult orElse(),
  }) {
    if (notLogged != null) {
      return notLogged(this);
    }
    return orElse();
  }
}

abstract class NotLogged<T> extends SourceState<T> {
  const factory NotLogged() = _$NotLogged<T>;
  const NotLogged._() : super._();
}

/// @nodoc
abstract class $LoggedCopyWith<T, $Res> {
  factory $LoggedCopyWith(Logged<T> value, $Res Function(Logged<T>) then) =
      _$LoggedCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LoggedCopyWithImpl<T, $Res> extends _$SourceStateCopyWithImpl<T, $Res>
    implements $LoggedCopyWith<T, $Res> {
  _$LoggedCopyWithImpl(Logged<T> _value, $Res Function(Logged<T>) _then)
      : super(_value, (v) => _then(v as Logged<T>));

  @override
  Logged<T> get _value => super._value as Logged<T>;
}

/// @nodoc
class _$Logged<T> extends Logged<T> {
  const _$Logged() : super._();

  @override
  String toString() {
    return 'SourceState<$T>.logged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Logged<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() notLogged,
    required TResult Function() logged,
  }) {
    return logged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? notLogged,
    TResult Function()? logged,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Start<T> value) loading,
    required TResult Function(NotLogged<T> value) notLogged,
    required TResult Function(Logged<T> value) logged,
  }) {
    return logged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start<T> value)? loading,
    TResult Function(NotLogged<T> value)? notLogged,
    TResult Function(Logged<T> value)? logged,
    required TResult orElse(),
  }) {
    if (logged != null) {
      return logged(this);
    }
    return orElse();
  }
}

abstract class Logged<T> extends SourceState<T> {
  const factory Logged() = _$Logged<T>;
  const Logged._() : super._();
}
