import 'dart:convert';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiClient {
  late final Dio dio;
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

  // Future<List<Content>> getContents() async {
  //   final response = await dio.get('/Contents');
  //   debugPrint(response.toString());
  //   List<Content> users = List<Content>.from(response.data.map((model) {
  //     debugPrint(model.toString());
  //     return Content.fromJson(model);
  //   }));
  //   return users;
  // }

  Future<bool> postOrder({required Map<int, int> order}) async {
    // Map<int, int> => JSON
    final data = {
      'order': order.map((key, value) => MapEntry(key.toString(), value))
    };

    try {
      final response = await dio.post(
        '/orders',
        data: data,
      );
      debugPrint(response.toString());
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      debugPrint(e.toString());
      return false;
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

// APIレスポンスのモデル
// Contentはid, title, subtitle, priceプロパティを持つ
class Content {
  final String id;
  final String title;
  final String body;
  final int order;
  Content({
    required this.id,
    required this.title,
    required this.body,
    required this.order,
  });
  factory Content.fromJson(Map<String, dynamic> json) {
    return Content(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      order: json['order'],
    );
  }
}
