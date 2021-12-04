import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'screens/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        getPages: [
          GetPage(name: '/0', page: () => HomeScreen()),
          GetPage(name: '/1', page: () => PostAdScreen()),
          GetPage(name: '/2', page: () => HistoryScreen()),
          GetPage(name: '/3', page: () => NotificationScreen()),
        ],
        initialRoute: '/0',
      ),
      designSize: const Size(360, 640),
    );
  }
}
