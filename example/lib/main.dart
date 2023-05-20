import 'package:flutter/material.dart';

import 'liquid_circular_progress_indicator_page.dart';
import 'liquid_custom_progress_indicator_page.dart';
import 'liquid_linear_progress_indicator_page.dart';

void main() => runApp(const MaterialApp(home: Example()));

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liquid Progress Indicator Examples"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextButton(

              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => LiquidCircularProgressIndicatorPage(),
                ),
              ),
              child: const Text("Circular"),
            ),
            TextButton(
              child: const Text("Linear"),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const LiquidLinearProgressIndicatorPage(),
                ),
              ),
            ),
            TextButton(
              child: const Text("Custom"),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const LiquidCustomProgressIndicatorPage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
