// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ticket _$_$_TicketFromJson(Map<String, dynamic> json) {
  return _$_Ticket(
    id: json['id'] as String,
    user: User.fromJson(json['user'] as Map<String, dynamic>),
    title: json['title'] as String,
    description: json['description'] as String,
    device: json['device'] as String,
    status: json['status'] as String,
    technician: json['technician'] as String,
  );
}

Map<String, dynamic> _$_$_TicketToJson(_$_Ticket instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'title': instance.title,
      'description': instance.description,
      'device': instance.device,
      'status': instance.status,
      'technician': instance.technician,
    };
