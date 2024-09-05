import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView(this.message, {super.key});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }
}
