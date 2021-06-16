import 'package:course_purchase/app/shared/store/car_store/car_store.dart';
import 'package:mobx/mobx.dart';
part 'car_total_store.g.dart';

class CarTotalStore = _CarTotalStoreBase with _$CarTotalStore;

abstract class _CarTotalStoreBase with Store {
   final CarStore _carStore;

  _CarTotalStoreBase(this._carStore);

  @computed
  double get total => _carStore.total;
}