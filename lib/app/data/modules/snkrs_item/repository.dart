import 'package:snkrs_flutter/app/data/modules/snkrs_item/model.dart';
import 'package:snkrs_flutter/app/data/provider/api.dart';

class SnkrsItemRepository {
  final ApiProvider api;

  SnkrsItemRepository(this.api);

  Future<List<SnkrsItem>> getAll() {
    return api.getSnkrsItems();
  }

  // getId(id) {
  //   return api.getId(id);
  // }

  // delete(id) {
  //   return api.delete(id);
  // }

  // edit(obj) {
  //   return api.edit(obj);
  // }

  // add(obj) {
  //   return api.add(obj);
  // }
}
