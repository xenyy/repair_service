import 'package:freezed_annotation/freezed_annotation.dart';

part 'notes.freezed.dart';
part 'notes.g.dart';

@freezed
class Notes with _$Notes {
  const Notes._();
  const factory Notes({
    required String id,
    required String ticketId,
    required String technician,
    //date?¿
    required String text,
  }) = _Notes;

  factory Notes.fromJson(Map<String, dynamic> json) => _$NotesFromJson(json);
}
