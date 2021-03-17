import 'package:uuid/uuid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

var _uuid = Uuid();

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String id,
    required String username,
    required String name,
    required String surname,
    required String email,
    String? phone,
  }) = _User;

  factory User.create(String username, String name, String surname, String email, String? phone) {
    return User(
      id: _uuid.v4(),
      name: name,
      username: username,
      surname: surname,
      email: email,
      phone: phone!,
    );
  }

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
