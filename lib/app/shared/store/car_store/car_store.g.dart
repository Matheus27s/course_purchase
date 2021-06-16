// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CarStore on _CarStoreBase, Store {
  Computed<double>? _$totalComputed;

  @override
  double get total => (_$totalComputed ??=
          Computed<double>(() => super.total, name: '_CarStoreBase.total'))
      .value;

  final _$_CarStoreBaseActionController =
      ActionController(name: '_CarStoreBase');

  @override
  void addCourseInCar(CourseModel courseModel) {
    final _$actionInfo = _$_CarStoreBaseActionController.startAction(
        name: '_CarStoreBase.addCourseInCar');
    try {
      return super.addCourseInCar(courseModel);
    } finally {
      _$_CarStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCourseInCar(CourseModel courseModel) {
    final _$actionInfo = _$_CarStoreBaseActionController.startAction(
        name: '_CarStoreBase.removeCourseInCar');
    try {
      return super.removeCourseInCar(courseModel);
    } finally {
      _$_CarStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
total: ${total}
    ''';
  }
}
