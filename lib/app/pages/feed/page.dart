import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:snkrs_flutter/app/data/modules/snkrs_item/controller.dart';
import 'package:snkrs_flutter/app/pages/feed/widgets/snkrs_item_card.dart';

class FeedPage extends StatelessWidget {
  FeedPage({Key? key}) : super(key: key);
  final SnkrsItemsController snkrsItemsController = Get.find<SnkrsItemsController>();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: snkrsItemsController.obx((items) {
        // return ListView.separated(
        //   padding: EdgeInsets.symmetric(horizontal: 16),
        //   itemBuilder: (context, index) => SnkrsItemCard(item: items![index]),
        //   separatorBuilder: (context, _) => SizedBox(height: 16),
        //   itemCount: items!.length,
        // ),
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: items!
                .map(
                  (e) => Column(
                    children: [
                      SnkrsItemCard(item: e),
                      const SizedBox(height: 20),
                    ],
                  ),
                )
                .toList(),
          ),
        );
      }),
    );
  }
}
