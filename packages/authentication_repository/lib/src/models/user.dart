import 'package:equatable/equatable.dart';
// ignore_for_file: public_member_api_docs

class User extends Equatable {
  const User({
    required this.id,
    this.name,
    this.email,
    this.photo,
  });

  final String id;
  final String? name;
  final String? email;
  final String? photo;

  static const empty = User(id: '');

  bool get isEmpty => this == User.empty;

  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props => [email, id, name, photo];
}
