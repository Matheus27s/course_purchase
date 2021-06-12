import 'package:flutter_test/flutter_test.dart';
import 'package:course_purchase/app/modules/session/session_store.dart';
 
void main() {
  late SessionStore store;

  setUpAll(() {
    store = SessionStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}