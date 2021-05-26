import 'package:equatable/equatable.dart';

class UserParam extends Equatable {
  final int id;
  final String password;

  const UserParam({
    required this.id,
    required this.password,
  });

  @override
  List<Object> get props => [id, password];
}
