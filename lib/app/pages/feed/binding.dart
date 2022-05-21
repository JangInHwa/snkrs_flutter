import 'package:get/get.dart';
import 'package:snkrs_flutter/app/data/modules/snkrs_item/controller.dart';
import 'package:snkrs_flutter/app/data/modules/snkrs_item/repository.dart';
import 'package:snkrs_flutter/app/data/provider/api.dart';

class FeedPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SnkrsItemsController>(() => SnkrsItemsController(SnkrsItemRepository(ApiProvider())));
  }
}
