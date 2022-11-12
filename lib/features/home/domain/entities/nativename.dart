import 'package:equatable/equatable.dart';

class NativeNameEntity extends Equatable {
  const NativeNameEntity({
    required this.common,
    required this.official,
  });

  final String official;
  final String common;

  @override
  List<Object?> get props => [
        official,
        common,
      ];
}
