import 'package:flutter_test/flutter_test.dart';
import 'package:course_purchase/app/modules/payment/payment_store.dart';
 
void main() {
  late PaymentStore store;

  setUpAll(() {
    store = PaymentStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}