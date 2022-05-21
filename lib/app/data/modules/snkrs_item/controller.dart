import 'package:get/get.dart';
import 'package:snkrs_flutter/app/data/modules/snkrs_item/model.dart';
import 'package:snkrs_flutter/app/data/modules/snkrs_item/repository.dart';

class SnkrsItemsController extends GetxController with StateMixin<List<SnkrsItem>> {
  final SnkrsItemRepository repository;
  SnkrsItemsController(this.repository);
  final Rx<List<SnkrsItem>> items = Rx([]);

  @override
  void onInit() {
    getItems();
    super.onInit();
  }

  Future getItems() async {
    change(null, status: RxStatus.loading());
    items.value = await repository.getAll();
    change(items.value, status: RxStatus.success());
  }
}
