import 'package:flutter/material.dart';
import '../models/analysis_result.dart';
import '../widgets/result_profile_card.dart';

class AnalysisResultScreen extends StatelessWidget {
  final AnalysisResult result;

  const AnalysisResultScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Analysis Complete',
              style: Theme.of(context).textTheme.displayMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'Here is your personalized facial profile based on our analysis.',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ResultProfileCard(
              title: 'Hairline Type',
              resultValue: result.hairlineResult,
              confidence: result.hairlineConfidence,
              icon: Icons.face,
            ),
            const SizedBox(height: 16),
            ResultProfileCard(
              title: 'Jawline Shape',
              resultValue: result.jawlineResult,
              confidence: result.jawlineConfidence,
              icon: Icons.person_outline,
            ),
            const SizedBox(height: 48),
            ElevatedButton(
              onPressed: () {
                // Pop back to the initial photo upload screen
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('Start Over'),
            ),
          ],
        ),
      ),
    );
  }
}
