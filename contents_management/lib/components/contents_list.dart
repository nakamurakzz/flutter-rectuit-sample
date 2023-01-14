import 'package:contents_management/models/Contents.dart';
import 'package:flutter/material.dart';

class ContentsList extends StatelessWidget {
  final bool isEnabled;
  final List<Content> contents;
  final int selectContentIndex;
  final Function(int) selectContent;

  const ContentsList(
      {super.key,
      required this.isEnabled,
      required this.contents,
      required this.selectContentIndex,
      required this.selectContent});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: contents.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 0),
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(contents[index].title,
                            style: const TextStyle(fontSize: 24)),
                        Spacer(),
                        isEnabled
                            ? const Icon(Icons.delete_outline)
                            : Container(),
                        SizedBox(width: 12),
                      ],
                    )),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
              onTap: (() {
                selectContent(index);
              }));
        },
      ),
    );
  }
}
