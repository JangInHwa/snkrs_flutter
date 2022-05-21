import 'package:get/get.dart';
import 'package:snkrs_flutter/app/data/modules/snkrs_item/model.dart';

class ApiProvider extends GetConnect {
  ApiProvider() {
    baseUrl = 'https://4181-61-77-35-68.jp.ngrok.io';
  }

  Future<List<SnkrsItem>> getSnkrsItems() async {
    String url = '/feed';

    Response response = await get(url);

    if (response.isOk == false) {
      throw Exception(response.body);
    }

    return (response.body as List).map<SnkrsItem>((e) => SnkrsItem.fromJson(e)).toList();
  }
}
