import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure([properties]);
  final List<dynamic> properties = const <dynamic>[];

  @override
  List<dynamic> get props => properties;
}

class ServerFailure extends Failure {}
