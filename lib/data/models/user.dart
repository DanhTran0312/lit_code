import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@HiveType(typeId: 0)
@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    String? name,
    String? email,
    String? photoUrl,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  const User._();
  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  String? get email;
  @override
  @HiveField(3)
  String? get photoUrl;

  static const empty = User(id: '');

  bool get isEmpty => this == User.empty;
  bool get isNotEmpty => this != User.empty;
}
