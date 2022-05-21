import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:snkrs_flutter/app/routes/pages.dart';
import 'package:snkrs_flutter/app/routes/routes.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetCupertinoApp(
      title: 'SNKRS',
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(brightness: Brightness.light),
      getPages: AppPages.pages,
      initialRoute: Routes.ROOT,
    );
  }
}
