import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget erroPage() {
  return Scaffold(
    body: Center(
      child: Lottie.asset(
        'Assets/Animation/error.json',
        errorBuilder: (context, error, stackTrace) => const Text('Erorr'),
      ),
    ),
  );
}
