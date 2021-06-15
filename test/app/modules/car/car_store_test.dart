import 'package:flutter_test/flutter_test.dart';
import 'package:course_purchase/app/modules/car/car_store.dart';
 
void main() {
  late CarStore store;

  setUpAll(() {
    store = CarStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}