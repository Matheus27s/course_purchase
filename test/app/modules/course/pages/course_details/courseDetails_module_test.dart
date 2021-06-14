import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:course_purchase/app/modules/course/pages/course_details/courseDetails_module.dart';
 
void main() {

  setUpAll(() {
    initModule(CourseDetailsModule());
  });
}