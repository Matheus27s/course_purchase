// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_courses_list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CarCourseListStore on _CarCourseListStoreBase, Store {
  Computed<ObservableList<CarModel>>? _$courseListComputed;

  @override
  ObservableList<CarModel> get courseList => (_$courseListComputed ??=
          Computed<ObservableList<CarModel>>(() => super.courseList,
              name: '_CarCourseListStoreBase.courseList'))
      .value;

  @override
  String toString() {
    return '''
courseList: ${courseList}
    ''';
  }
}
