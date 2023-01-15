import 'package:flutter/material.dart';
import '../components/buttons.dart';
import '../components/contents_detail.dart';
import '../components/contents_list.dart';
import '../components/serviceNameIcon.dart';
import '../models/Contents.dart';

class ContentsPage extends StatefulWidget {
  List<Content> contents;
  ContentsPage({super.key, required this.contents});

  @override
  State<ContentsPage> createState() => _ContentsPageState();
}

class _ContentsPageState extends State<ContentsPage> {
  // state _isEnabled
  bool _isEnabled = false;
  int _selectedContentIndex = 0;

  void selectContent(int index) {
    setState(() {
      _selectedContentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // theme: ThemeData(fontFamily: "NotoSansJp"),
        home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: Row(
          // left
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
                width: 300,
                child: Column(
                  children: [
                    const ServiceNameIcon(),
                    const SizedBox(height: 20),
                    ContentsList(
                      isEnabled: _isEnabled,
                      contents: widget.contents,
                      selectContentIndex: _selectedContentIndex,
                      selectContent: selectContent,
                    ),
                    Buttons(
                      isEnabled: _isEnabled,
                      changeEnabledStatus: _enabledStateChange,
                    )
                  ],
                )),
            const SizedBox(width: 42), // Todo: 52
            ContentsDetail(
              selectedContentIndex: _selectedContentIndex,
              contents: widget.contents[_selectedContentIndex],
            ),
          ],
        ),
      ),
    ));
  }

  void _enabledStateChange() {
    setState(() {
      _isEnabled = !_isEnabled;
    });
  }
}
