import 'package:don_gestin_movil/router/routes.dart';
import 'package:don_gestin_movil/views/landpage_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Don Gestin C:',
      // theme: ThemeData.dark(),
      initialRoute: LandPageView.id,
      routes: CustomRoutes.routes,
    );
  }
}
