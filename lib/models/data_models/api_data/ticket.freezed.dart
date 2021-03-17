// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ticket _$TicketFromJson(Map<String, dynamic> json) {
  return _Ticket.fromJson(json);
}

/// @nodoc
class _$TicketTearOff {
  const _$TicketTearOff();

  _Ticket call(
      {required String id,
      required User user,
      required String title,
      required String description,
      required String device,
      required String status,
      required String technician}) {
    return _Ticket(
      id: id,
      user: user,
      title: title,
      description: description,
      device: device,
      status: status,
      technician: technician,
    );
  }

  Ticket fromJson(Map<String, Object> json) {
    return Ticket.fromJson(json);
  }
}

/// @nodoc
const $Ticket = _$TicketTearOff();

/// @nodoc
mixin _$Ticket {
  String get id => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get device => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get technician => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketCopyWith<Ticket> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketCopyWith<$Res> {
  factory $TicketCopyWith(Ticket value, $Res Function(Ticket) then) =
      _$TicketCopyWithImpl<$Res>;
  $Res call(
      {String id,
      User user,
      String title,
      String description,
      String device,
      String status,
      String technician});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$TicketCopyWithImpl<$Res> implements $TicketCopyWith<$Res> {
  _$TicketCopyWithImpl(this._value, this._then);

  final Ticket _value;
  // ignore: unused_field
  final $Res Function(Ticket) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? device = freezed,
    Object? status = freezed,
    Object? technician = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      technician: technician == freezed
          ? _value.technician
          : technician // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$TicketCopyWith<$Res> implements $TicketCopyWith<$Res> {
  factory _$TicketCopyWith(_Ticket value, $Res Function(_Ticket) then) =
      __$TicketCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      User user,
      String title,
      String description,
      String device,
      String status,
      String technician});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$TicketCopyWithImpl<$Res> extends _$TicketCopyWithImpl<$Res>
    implements _$TicketCopyWith<$Res> {
  __$TicketCopyWithImpl(_Ticket _value, $Res Function(_Ticket) _then)
      : super(_value, (v) => _then(v as _Ticket));

  @override
  _Ticket get _value => super._value as _Ticket;

  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? device = freezed,
    Object? status = freezed,
    Object? technician = freezed,
  }) {
    return _then(_Ticket(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      technician: technician == freezed
          ? _value.technician
          : technician // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Ticket extends _Ticket {
  const _$_Ticket(
      {required this.id,
      required this.user,
      required this.title,
      required this.description,
      required this.device,
      required this.status,
      required this.technician})
      : super._();

  factory _$_Ticket.fromJson(Map<String, dynamic> json) =>
      _$_$_TicketFromJson(json);

  @override
  final String id;
  @override
  final User user;
  @override
  final String title;
  @override
  final String description;
  @override
  final String device;
  @override
  final String status;
  @override
  final String technician;

  @override
  String toString() {
    return 'Ticket(id: $id, user: $user, title: $title, description: $description, device: $device, status: $status, technician: $technician)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Ticket &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.device, device) ||
                const DeepCollectionEquality().equals(other.device, device)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.technician, technician) ||
                const DeepCollectionEquality()
                    .equals(other.technician, technician)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(device) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(technician);

  @JsonKey(ignore: true)
  @override
  _$TicketCopyWith<_Ticket> get copyWith =>
      __$TicketCopyWithImpl<_Ticket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TicketToJson(this);
  }
}

abstract class _Ticket extends Ticket {
  const factory _Ticket(
      {required String id,
      required User user,
      required String title,
      required String description,
      required String device,
      required String status,
      required String technician}) = _$_Ticket;
  const _Ticket._() : super._();

  factory _Ticket.fromJson(Map<String, dynamic> json) = _$_Ticket.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  User get user => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get device => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get technician => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TicketCopyWith<_Ticket> get copyWith => throw _privateConstructorUsedError;
}
