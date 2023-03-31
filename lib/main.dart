import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solid_test_task/providers/color_provider.dart';

import 'package:solid_test_task/view/my_app/my_app.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (ctx) => ColorProvider(),
      child:  const MyApp(),
    ),
  );
}
