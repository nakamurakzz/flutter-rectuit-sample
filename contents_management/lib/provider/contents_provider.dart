import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/api_client.dart';
import '../api/cognito_client.dart';
import '../models/Contents.dart';

final contentsProvider = StateNotifierProvider<ContentsNotifier, List<Content>>(
  (ref) => ContentsNotifier(),
);

// SSOTを満たした、記事データソース
class ContentsNotifier extends StateNotifier<List<Content>> {
  ContentsNotifier() : super([]);

  void getContents() async {
    // APIから記事データを取得する
    final apiClient = ApiClient();
    final cognitoClient = CognitoClient();
    final user = await cognitoClient.getCurrentUser();
    apiClient.getContent(user.userId).then((contents) {
      // 取得した記事データをStateNotifierに渡す
      state = contents;
    });
  }
}
