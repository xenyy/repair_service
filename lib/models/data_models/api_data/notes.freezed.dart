// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Notes _$NotesFromJson(Map<String, dynamic> json) {
  return _Notes.fromJson(json);
}

/// @nodoc
class _$NotesTearOff {
  const _$NotesTearOff();

  _Notes call(
      {required String id,
      required String ticketId,
      required String technician,
      required String text}) {
    return _Notes(
      id: id,
      ticketId: ticketId,
      technician: technician,
      text: text,
    );
  }

  Notes fromJson(Map<String, Object> json) {
    return Notes.fromJson(json);
  }
}

/// @nodoc
const $Notes = _$NotesTearOff();

/// @nodoc
mixin _$Notes {
  String get id => throw _privateConstructorUsedError;
  String get ticketId => throw _privateConstructorUsedError;
  String get technician => throw _privateConstructorUsedError; //date?¿
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotesCopyWith<Notes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesCopyWith<$Res> {
  factory $NotesCopyWith(Notes value, $Res Function(Notes) then) =
      _$NotesCopyWithImpl<$Res>;
  $Res call({String id, String ticketId, String technician, String text});
}

/// @nodoc
class _$NotesCopyWithImpl<$Res> implements $NotesCopyWith<$Res> {
  _$NotesCopyWithImpl(this._value, this._then);

  final Notes _value;
  // ignore: unused_field
  final $Res Function(Notes) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? ticketId = freezed,
    Object? technician = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ticketId: ticketId == freezed
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      technician: technician == freezed
          ? _value.technician
          : technician // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NotesCopyWith<$Res> implements $NotesCopyWith<$Res> {
  factory _$NotesCopyWith(_Notes value, $Res Function(_Notes) then) =
      __$NotesCopyWithImpl<$Res>;
  @override
  $Res call({String id, String ticketId, String technician, String text});
}

/// @nodoc
class __$NotesCopyWithImpl<$Res> extends _$NotesCopyWithImpl<$Res>
    implements _$NotesCopyWith<$Res> {
  __$NotesCopyWithImpl(_Notes _value, $Res Function(_Notes) _then)
      : super(_value, (v) => _then(v as _Notes));

  @override
  _Notes get _value => super._value as _Notes;

  @override
  $Res call({
    Object? id = freezed,
    Object? ticketId = freezed,
    Object? technician = freezed,
    Object? text = freezed,
  }) {
    return _then(_Notes(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ticketId: ticketId == freezed
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
      technician: technician == freezed
          ? _value.technician
          : technician // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Notes extends _Notes {
  const _$_Notes(
      {required this.id,
      required this.ticketId,
      required this.technician,
      required this.text})
      : super._();

  factory _$_Notes.fromJson(Map<String, dynamic> json) =>
      _$_$_NotesFromJson(json);

  @override
  final String id;
  @override
  final String ticketId;
  @override
  final String technician;
  @override //date?¿
  final String text;

  @override
  String toString() {
    return 'Notes(id: $id, ticketId: $ticketId, technician: $technician, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Notes &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.ticketId, ticketId) ||
                const DeepCollectionEquality()
                    .equals(other.ticketId, ticketId)) &&
            (identical(other.technician, technician) ||
                const DeepCollectionEquality()
                    .equals(other.technician, technician)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(ticketId) ^
      const DeepCollectionEquality().hash(technician) ^
      const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  _$NotesCopyWith<_Notes> get copyWith =>
      __$NotesCopyWithImpl<_Notes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotesToJson(this);
  }
}

abstract class _Notes extends Notes {
  const factory _Notes(
      {required String id,
      required String ticketId,
      required String technician,
      required String text}) = _$_Notes;
  const _Notes._() : super._();

  factory _Notes.fromJson(Map<String, dynamic> json) = _$_Notes.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get ticketId => throw _privateConstructorUsedError;
  @override
  String get technician => throw _privateConstructorUsedError;
  @override //date?¿
  String get text => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotesCopyWith<_Notes> get copyWith => throw _privateConstructorUsedError;
}
