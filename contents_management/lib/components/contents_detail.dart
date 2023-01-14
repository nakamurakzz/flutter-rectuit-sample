import 'package:contents_management/components/buttons.dart';
import 'package:contents_management/models/Contents.dart';
import 'package:flutter/material.dart';

class ContentsDetail extends StatefulWidget {
  final int selectedContentIndex;
  final Content contents;
  const ContentsDetail({
    super.key,
    required this.selectedContentIndex,
    required this.contents,
  });

  @override
  State<ContentsDetail> createState() => _ContentsDetailState();
}

class _ContentsDetailState extends State<ContentsDetail> {
  bool _isTitleEdit = false;
  bool _isBodyEdit = false;
  String _editTitle = '';
  String _editBody = '';

  void changeIsTitleEdit() {
    setState(() {
      _isTitleEdit = !_isTitleEdit;
      _editTitle = widget.contents.title;
    });
  }

  void changeIsBodyEdit() {
    setState(() {
      _isBodyEdit = !_isBodyEdit;
      _editBody = widget.contents.body;
    });
  }

  @override
  void initState() {
    super.initState();
    _editTitle = widget.contents.title;
    _editBody = widget.contents.body;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 510,
        height: 340,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 360,
                  child: _isTitleEdit
                      ? SizedBox(
                          height: 40,
                          child: TextField(
                            controller: TextEditingController(text: _editTitle),
                            decoration: const InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 30),
                              border: OutlineInputBorder(),
                            ),
                            cursorHeight: 32,
                            style: TextStyle(fontSize: 36),
                            textAlignVertical: TextAlignVertical.center,
                            onChanged: (String value) {
                              _editTitle = value;
                              print(_editTitle);
                            },
                          ))
                      : Row(
                          children: [
                            const SizedBox(
                              width: 30,
                            ),
                            Text(widget.contents.title,
                                style: TextStyle(fontSize: 32)),
                          ],
                        ),
                ),
                const SizedBox(
                  width: 20,
                ),
                _isTitleEdit
                    ? Row(
                        children: [
                          CancelButton(
                            onpressed: changeIsTitleEdit,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          SavedButton(
                            onpressed: changeIsTitleEdit,
                          ),
                        ],
                      )
                    : EditButton(onPlessed: changeIsTitleEdit),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                    height: 230,
                    width: 360,
                    child: SingleChildScrollView(
                        controller: ScrollController(),
                        child: _isBodyEdit
                            ? TextField(
                                controller:
                                    TextEditingController(text: _editBody),
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.all(30),
                                  border: OutlineInputBorder(),
                                ),
                                minLines: 1,
                                maxLines: 10,
                                cursorHeight: 32,
                                style: const TextStyle(fontSize: 16),
                                textAlignVertical: TextAlignVertical.center,
                                onChanged: (String value) {
                                  _editTitle = value;
                                  print(_editTitle);
                                },
                              )
                            : Padding(
                                padding: EdgeInsets.all(30),
                                child: Text(widget.contents.body,
                                    style: const TextStyle(fontSize: 16)),
                              ))),
                const SizedBox(
                  width: 20,
                  height: 0,
                ),
                Container(
                  child: _isBodyEdit
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CancelButton(
                              onpressed: changeIsBodyEdit,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            SavedButton(
                              onpressed: changeIsBodyEdit,
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            EditButton(onPlessed: changeIsBodyEdit),
                          ],
                        ),
                )
              ],
            ),
          ],
        ));
  }

  Widget _wrapWithStuff(Widget child) {
    return Padding(
      padding: EdgeInsets.all(0),
      child:
          Container(height: 200, width: 30, color: Colors.white, child: child),
    );
  }
}
