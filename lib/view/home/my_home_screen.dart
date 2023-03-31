import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solid_test_task/providers/color_provider.dart';
import 'package:solid_test_task/utils/app_constance.dart';

/// Class that have my scaffold
class MyHomeScreen extends StatelessWidget {
  /// MyHomeScreen Constructor
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ColorProvider>(
      builder: (context, provider, _) {
        return Scaffold(
          backgroundColor: provider.backgroundColor,
          body: TextButton(
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(
                Colors.transparent,
              ),
              padding: MaterialStateProperty.all(
                EdgeInsetsDirectional.zero,
              ),
            ),
            onPressed: () {
              provider.generateRandomColor();
            },
            child: const Center(
              child: Text(
                AppConstance.helloThere,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
