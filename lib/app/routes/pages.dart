import 'package:get/get.dart';
import 'package:snkrs_flutter/app/pages/main/page.dart';
import 'package:snkrs_flutter/app/routes/routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.ROOT, page: () => const RootPage()),
  ];
}
