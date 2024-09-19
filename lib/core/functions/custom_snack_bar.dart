import 'package:flutter/material.dart';

void customSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    // علشان المكان والمده
    const SnackBar(
      content: Text('text'),
    ),
  );
}
