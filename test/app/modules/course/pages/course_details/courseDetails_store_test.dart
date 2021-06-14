import 'package:flutter_test/flutter_test.dart';
import 'package:course_purchase/app/modules/course/pages/course_details/courseDetails_store.dart';
 
void main() {
  late CourseDetailsStore store;

  setUpAll(() {
    store = CourseDetailsStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}