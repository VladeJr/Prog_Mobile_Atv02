import 'package:test/test.dart';
import 'package:bank_flutter02/main.dart';

void main() {
  group('Testes de Conta Bancária', () {
    test('Depositar em conta com double', () {
      final ContaBancaria<double> conta = ContaBancaria(1000.0);
      conta.depositar(200.0);
      expect(conta.saldo, 1200.0);
    });

    test('Depositar em conta com int', () {
      final ContaBancaria<int> conta = ContaBancaria(1000);
      conta.depositar(500);
      expect(conta.saldo, 1500);
    });

    test('Retirar valor válido da conta', () {
      final ContaBancaria<double> conta = ContaBancaria(1000.0);
      conta.retirar(400.0);
      expect(conta.saldo, 600.0);
    });

    test('Tentar retirar valor maior que o saldo', () {
      final ContaBancaria<double> conta = ContaBancaria(500.0);
      conta.retirar(600.0);
      expect(conta.saldo, 500.0);
    });
  });
}
