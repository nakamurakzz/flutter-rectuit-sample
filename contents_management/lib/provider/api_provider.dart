// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import '../api/api_client.dart';
// import '../api/cognito_client.dart';
// import '../models/Contents.dart';

// final apiClientProvider = Provider((_) => apiClient);

// final contentsProvider = FutureProvider<List<Content>>((ref) async {
//   final apiClient = ref.watch(apiClientProvider);
//   final user = await cognitoClient.getCurrentUser();
//   return await apiClient.getContent(user.userId);
// });
