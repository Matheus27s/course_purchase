// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_data_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CardDataStore on _CardDataStoreBase, Store {
  Computed<PaymentModel>? _$modelComputed;

  @override
  PaymentModel get model =>
      (_$modelComputed ??= Computed<PaymentModel>(() => super.model,
              name: '_CardDataStoreBase.model'))
          .value;

  final _$_CardDataStoreBaseActionController =
      ActionController(name: '_CardDataStoreBase');

  @override
  void nextPage() {
    final _$actionInfo = _$_CardDataStoreBaseActionController.startAction(
        name: '_CardDataStoreBase.nextPage');
    try {
      return super.nextPage();
    } finally {
      _$_CardDataStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
model: ${model}
    ''';
  }
}
