import 'package:flutter_application_1/view_models/app_view_model.dart';
import 'package:provider/provider.dart';

import 'views/task_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => appViewModel(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskPage(),
    ); // MaterialApp
  }
}
