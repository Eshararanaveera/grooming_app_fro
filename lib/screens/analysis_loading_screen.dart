import 'dart:io';
import 'package:flutter/material.dart';

class AnalysisLoadingScreen extends StatelessWidget {
  final File imageFile;

  const AnalysisLoadingScreen({super.key, required this.imageFile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Analyzing...'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 24),
            Text('Uploading and analyzing your photo...'),
          ],
        ),
      ),
    );
  }
}
