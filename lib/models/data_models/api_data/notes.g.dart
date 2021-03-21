// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notes _$_$_NotesFromJson(Map<String, dynamic> json) {
  return _$_Notes(
    id: json['id'] as String,
    ticketId: json['ticketId'] as String,
    technician: json['technician'] as String,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$_$_NotesToJson(_$_Notes instance) => <String, dynamic>{
      'id': instance.id,
      'ticketId': instance.ticketId,
      'technician': instance.technician,
      'text': instance.text,
    };
