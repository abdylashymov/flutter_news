import 'package:flutter/material.dart';

class Appindicator extends StatelessWidget {
  const Appindicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}
