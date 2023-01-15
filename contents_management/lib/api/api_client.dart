import 'dart:convert';
import 'package:amplify_flutter/amplify_flutter.dart';

import '../models/Contents.dart';

class ApiClient {
  ApiClient();

  Future<List<Content>> getContent(String id) async {
    try {
      final options = RestOptions(path: '/contents/$id');
      final restOperation = Amplify.API.get(restOptions: options);
      final response = await restOperation.response;
      print('GET call succeeded: ${response.body}');

      if (response.statusCode == 200) {
        // Uint8Listのresponse.dataをList<Content>に変換
        List<dynamic> contents = jsonDecode(response.body);

        return List<Content>.from(contents.map((model) {
          return Content.fromJson(model);
        }));
      }
      return [];
    } on ApiException catch (e) {
      print('GET call failed: $e');
      throw e;
    }
  }
}

final ApiClient apiClient = ApiClient();

class ContentList {
  final List<Content> contents;
  ContentList({
    required this.contents,
  });
  factory ContentList.fromJson(List<dynamic> json) {
    return ContentList(
      contents: List<Content>.from(json.map((model) {
        return Content.fromJson(model);
      })),
    );
  }
}
