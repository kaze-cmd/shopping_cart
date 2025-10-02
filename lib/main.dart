import 'shopping_cart.dart';
import 'paypal_gateway.dart';
import 'creditcard_gateway.dart';
import 'mock_gateway.dart';

void main() {
  print('---ShoppingCart with PayPal ---');
  var cartPaypal = ShoppingCart(PaypalGateway('itsnukea123@gmail.com'));
  cartPaypal.checkout(50.0);
  cartPaypal.refund(20.0);

  print('\n---ShoppingCart with CreditCard ---');
  var cartCard = ShoppingCart(CreditCardGateway('**** **** **** 1234'));
  cartCard.checkout(100.0);
  cartCard.refund(30.0);

  print('\n---ShoppingCart with MockGateway---');
  var mock = MockGateway();
  var cartMock = ShoppingCart(mock);
  cartMock.checkout(75.0);
  print('Mock log: ${mock.log}');
}
