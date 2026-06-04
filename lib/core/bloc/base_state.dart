import 'package:equatable/equatable.dart';

enum Status { initial, loading, success, failure }

abstract class BaseState extends Equatable {
  final Status state;
  final String? message;

  const BaseState({this.state = Status.initial, this.message});

  bool get isInitial => state == Status.initial;
  bool get isLoading => state == Status.loading;
  bool get isSuccess => state == Status.success;
  bool get isFailure => state == Status.failure;

  @override
  List<Object?> get props => [state, message];
}
