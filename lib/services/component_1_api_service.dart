import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../config/api_config.dart';
import '../models/analysis_result.dart';

class Component1ApiService {
  Future<AnalysisResult?> analyzeFace(File imageFile) async {
    try {
      final uri = Uri.parse('${ApiConfig.baseUrl}/analyze_face');
      
      var request = http.MultipartRequest('POST', uri);
      
      request.files.add(
        await http.MultipartFile.fromPath(
          'file', 
          imageFile.path,
        ),
      );

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonMap = json.decode(response.body);
        return AnalysisResult.fromJson(jsonMap);
      } else {
        print('API Error: Status code ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error sending image to API: $e');
      return null;
    }
  }
}
