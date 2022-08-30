import 'package:flutter/material.dart';
import 'package:jots_demo/jots_router.dart';
import 'package:jots_demo/ui/home/home_view.dart';

class JotsApp extends StatelessWidget {
  const JotsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: JotsRouter.generateRoute,
      home: HomeView(),
    );
  }
}
