import 'package:flutter/material.dart';
import '../components/buttons.dart';
import '../components/contents_list.dart';
import '../components/serviceNameIcon.dart';
import '../models/Contents.dart';

List<Content> contents = [
  Content(title: 'title1', body: 'body1'),
  Content(title: 'title2', body: 'body2'),
  Content(title: 'title3', body: 'body3'),
  Content(title: 'title4', body: 'body4'),
  Content(title: 'title5', body: 'body5'),
  Content(title: 'title6', body: 'body6'),
  Content(title: 'title7', body: 'body7'),
  Content(title: 'title8', body: 'body8'),
  Content(title: 'title9', body: 'body9'),
  Content(title: 'title10', body: 'body10'),
  Content(title: 'title11', body: 'body11'),
  Content(title: 'title12', body: 'body12'),
  Content(title: 'title13', body: 'body13'),
  Content(title: 'title14', body: 'body14'),
  Content(title: 'title15', body: 'body15'),
  Content(title: 'title16', body: 'body16'),
  Content(title: 'title17', body: 'body17'),
  Content(title: 'title18', body: 'body18'),
  Content(title: 'title19', body: 'body19'),
  Content(title: 'title20', body: 'body20'),
  Content(title: 'title21', body: 'body21'),
  Content(title: 'title22', body: 'body22'),
  Content(title: 'title23', body: 'body23'),
  Content(title: 'title24', body: 'body24'),
  Content(title: 'title25', body: 'body25'),
  Content(title: 'title26', body: 'body26'),
  Content(title: 'title27', body: 'body27'),
  Content(title: 'title28', body: 'body28'),
  Content(title: 'title29', body: 'body29'),
  Content(title: 'title30', body: 'body30'),
  Content(title: 'title31', body: 'body31'),
  Content(title: 'title32', body: 'body32'),
  Content(title: 'title33', body: 'body33'),
  Content(title: 'title34', body: 'body34'),
  Content(title: 'title35', body: 'body35'),
];

void main() => runApp(const ContentsPage());

class ContentsPage extends StatefulWidget {
  const ContentsPage({super.key});

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
        home: Scaffold(
      appBar: AppBar(title: const Text('Contents Page')),
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
                      contents: contents,
                      selectContentIndex: _selectedContentIndex,
                      selectContent: selectContent,
                    ),
                    Buttons(
                      isEnabled: _isEnabled,
                      changeEnabledStatus: _enabledStateChange,
                    )
                  ],
                )),
            SizedBox(width: 52),
            ContentsDetail(),
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

class ContentsDetail extends StatefulWidget {
  const ContentsDetail({super.key});

  @override
  State<ContentsDetail> createState() => _ContentsDetailState();
}

class _ContentsDetailState extends State<ContentsDetail> {
  @override
  Widget build(BuildContext context) {
    return Card();
  }
}
