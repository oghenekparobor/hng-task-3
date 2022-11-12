import 'package:equatable/equatable.dart';

class CurrenciesEntity extends Equatable {
  const CurrenciesEntity({
    required this.name,
    required this.symbol,
  });

  final String name;
  final String symbol;

  @override
  List<Object?> get props => [
        name,
        symbol,
      ];
}
