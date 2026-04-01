import 'package:flutter/material.dart';
import 'package:juchari_uandakua/core/routes/app_routers.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouters,
      debugShowCheckedModeBanner: true,
    );
  }
}
