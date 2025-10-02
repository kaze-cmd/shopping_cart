import 'payment_gateway.dart';

class ShoppingCart {
  final PaymentGateway gateway;
  ShoppingCart(this.gateway);

  void checkout(double amount) {
    gateway.processPayment(amount);
  }

  void refund(double amount) {
    gateway.processPayment(-amount);
  }
}
