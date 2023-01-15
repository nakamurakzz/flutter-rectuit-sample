import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../api/api_client.dart';

final apiClientProvider = Provider((_) => apiClient);

final contentsProvider = FutureProvider<List<Content>>((ref) async {
  final apiClient = ref.watch(apiClientProvider);
  final contents =
      await apiClient.getContent("6246ad9a-b141-4445-8222-24df9225bfb1");
  return contents;
});
