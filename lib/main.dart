void main() {
  final ContaBancaria<double> conta1 = ContaBancaria(1000.0);
  final ContaBancaria<int> conta2 = ContaBancaria(500);

  conta1.depositar(250.0);
  conta2.retirar(100);

  print('Saldo da Conta 1: ${conta1.saldo}');
  print('Saldo da Conta 2: ${conta2.saldo}');
}

class ContaBancaria<T extends num> {
  T saldo;

  ContaBancaria(this.saldo);

  void depositar(T valor) {
    saldo += valor;
    print('Depósito de $valor realizado. Saldo atual: $saldo');
  }

  void retirar(T valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print('Saque de $valor realizado. Saldo atual: $saldo');
    } else {
      print('Saldo insuficiente.');
    }
  }
}
