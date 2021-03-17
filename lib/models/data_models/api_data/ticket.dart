import 'package:device_repair/models/data_models/api_data/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket.freezed.dart';
part 'ticket.g.dart';

@freezed
class Ticket with _$Ticket {
  const Ticket._();
  const factory Ticket({
    required String id,
    required User user,
    required String title,
    required String description,
    required String device,
    required String status,
    required String technician,
  }) = _Ticket;

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
}
