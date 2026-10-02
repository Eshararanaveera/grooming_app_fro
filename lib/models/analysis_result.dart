class AnalysisResult {
  final String hairlineResult;
  final double hairlineConfidence;
  final String jawlineResult;
  final double jawlineConfidence;

  AnalysisResult({
    required this.hairlineResult,
    required this.hairlineConfidence,
    required this.jawlineResult,
    required this.jawlineConfidence,
  });

  factory AnalysisResult.fromJson(Map<String, dynamic> json) {
    return AnalysisResult(
      hairlineResult: json['hairline_result'] as String,
      hairlineConfidence: (json['hairline_confidence'] as num).toDouble(),
      jawlineResult: json['jawline_result'] as String,
      jawlineConfidence: (json['jawline_confidence'] as num).toDouble(),
    );
  }
}
