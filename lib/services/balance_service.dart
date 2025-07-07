import 'package:flutter/foundation.dart';

class BalanceService {
  static final BalanceService _instance = BalanceService._internal();
  factory BalanceService() => _instance;
  BalanceService._internal();

  final ValueNotifier<double> _balance = ValueNotifier(45846.00);

  ValueNotifier<double> get balance => _balance;

  void updateBalance(double amount) {
    _balance.value -= amount;
  }
}
