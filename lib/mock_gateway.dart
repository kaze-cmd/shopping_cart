import 'payment_gateway.dart';

class MockGateway implements PaymentGateway {
  final List<String> log = [];

  @override
  void processPayment(double amount) {
    log.add('Processed $amount');
    print('[Mock] Recorded transaction: $amount');
  }
}