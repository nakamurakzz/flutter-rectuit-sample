import 'package:contents_management/models/Contents.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        shrinkWrap: true,
        itemCount: contents.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              child: Card(
                elevation: 0,
                color: selectContentIndex == index
                    ? Color.fromRGBO(200, 230, 250, 1)
                    : Colors.white,
                borderOnForeground: true,
                margin: EdgeInsets.symmetric(vertical: 0),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(contents[index].title,
                            style: TextStyle(
                                fontSize: 24,
                                color: selectContentIndex == index
                                    ? Colors.blue
                                    : Colors.black)),
                        Spacer(),
                        isEnabled
                            ? SvgPicture.asset(
                                'assets/icons/delete.svg',
                                width: 20,
                                height: 20,
                              )
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
