import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:my_app/router/myRouter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  final box = GetStorage();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _forRouter = RouterProvider();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/intrance",
      onGenerateRoute: _forRouter.onGenerateRoute,
    );
  }
}
