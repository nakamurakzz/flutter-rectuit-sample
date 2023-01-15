import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/api_provider.dart';

class TestPageState extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Page'),
      ),
      body: ref.watch(contentsProvider).when(
            data: (contents) =>
                Text(contents.isEmpty ? "" : contents.first.title),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => const Center(child: Text('Error')),
          ),
    );
  }
}
