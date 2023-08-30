import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  Page2({super.key});

  final String? name = Get.arguments["name"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome $name!'),
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have successfully navigated to this page.',
            ),
            const SizedBox(height: 20),
            const Text('Do you want option A or B?'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Get.toNamed(
                    "/page3a",
                    arguments: {"name": name},
                  ),
                  child: const Text(
                    'Option A',
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => Get.toNamed(
                    "/page3b",
                    arguments: {"name": name},
                  ),
                  child: const Text(
                    'Option B',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
