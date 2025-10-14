import 'payment_gateway.dart';

class CreditCardGateway implements PaymentGateway {
  final String cardNumber;
  CreditCardGateway(this.cardNumber);

  @override
  void processPayment(double amount) {
    print('[CreditCard] $cardNumber charged: $amount');
  }
}
