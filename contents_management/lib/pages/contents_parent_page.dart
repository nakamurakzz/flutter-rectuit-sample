import 'package:contents_management/pages/contents_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/api_provider.dart';
import '../provider/contents_provider.dart';

class ParentContentsPage extends ConsumerWidget {
  // read the contentsProvider
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final contents = ref.watch(contentsProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Test Page'),
        ),
        body: contents.isEmpty
            ? TextButton(
                child: Text("test"),
                onPressed: () {
                  ref.read(contentsProvider.notifier).getContents();
                })
            : ContentsPage(contents: contents));
  }
}
