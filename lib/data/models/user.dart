import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    String? name,
    String? email,
    String? photoUrl,
  }) = _User;
  const User._();
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static const empty = User(id: '');

  bool get isEmpty => this == User.empty;
  bool get isNotEmpty => this != User.empty;
}
