import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:snkrs_flutter/app/data/modules/snkrs_item/controller.dart';
import 'package:snkrs_flutter/app/data/modules/snkrs_item/model.dart';
import 'package:snkrs_flutter/app/pages/feed/widgets/snkrs_item_card.dart';

class FeedPage extends StatelessWidget {
  FeedPage({Key? key}) : super(key: key);
  final SnkrsItemsController snkrsItemsController = Get.find<SnkrsItemsController>();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: snkrsItemsController.obx(
        (items) => ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          itemCount: items!.length,
          itemBuilder: (context, index) => SnkrsItemCard(item: items[index]),
          separatorBuilder: (context, index) => const SizedBox(
            height: 20,
          ),
        ),
      ),
    );
  }
}
