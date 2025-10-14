import 'payment_gateway.dart';

class PaypalGateway implements PaymentGateway {
  final String accountEmail;

  PaypalGateway(this.accountEmail);

  @override
  void processPayment(double amount) {
    final formatted = amount.abs().toStringAsFixed(2);
    final sign = amount < 0 ? '-' : '';
    print('[PayPal] to $accountEmail processed payment: ${sign}\$${formatted}');
  }
}
