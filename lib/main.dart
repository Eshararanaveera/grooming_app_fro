import 'package:flutter/material.dart';
import 'utils/app_theme.dart';

void main() {
  runApp(const FacialProfilingApp());
}

class FacialProfilingApp extends StatelessWidget {
  const FacialProfilingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facial Profiling',
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Facial Profiling'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to Facial Profiling',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                'Upload a photo to get personalized grooming recommendations.',
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () {
                  // placeholder for image picker logic
                },
                icon: const Icon(Icons.camera_alt),
                label: const Text('Get Started'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
