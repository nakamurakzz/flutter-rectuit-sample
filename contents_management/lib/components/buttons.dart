import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final bool isEnabled;
  final void Function() changeEnabledStatus;
  const Buttons(
      {super.key, required this.changeEnabledStatus, required this.isEnabled});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            !isEnabled
                ? const SizedBox(width: 90, height: 40)
                : NewPageButton(changeEnabledStatus: changeEnabledStatus),
            const Spacer(),
            isEnabled
                ? DoneButton(
                    changeEnabledStatus: changeEnabledStatus,
                  )
                : EditButton(
                    changeEnabledStatus: changeEnabledStatus,
                  )
          ],
        ));
  }
}

class NewPageButton extends StatelessWidget {
  final void Function() changeEnabledStatus;
  const NewPageButton({super.key, required this.changeEnabledStatus});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 40,
      child: ElevatedButton(
        onPressed: () {
          changeEnabledStatus();
        },
        child: Column(children: const [
          Icon(
            Icons.done,
            size: 18,
          ),
          SizedBox(height: 3),
          Text('New Page', style: TextStyle(fontSize: 10))
        ]),
      ),
    );
  }
}

class DoneButton extends StatelessWidget {
  final void Function() changeEnabledStatus;
  const DoneButton({super.key, required this.changeEnabledStatus});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 40,
      child: ElevatedButton(
        onPressed: () {
          changeEnabledStatus();
        },
        child: Column(children: const [
          Icon(
            Icons.done,
            size: 18,
          ),
          SizedBox(height: 3),
          Text('Done', style: TextStyle(fontSize: 10))
        ]),
      ),
    );
  }
}

class EditButton extends StatelessWidget {
  final void Function() changeEnabledStatus;
  const EditButton({super.key, required this.changeEnabledStatus});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 40,
      child: ElevatedButton(
        onPressed: () {
          changeEnabledStatus();
        },
        child: Column(children: const [
          Icon(
            Icons.done,
            size: 18,
          ),
          SizedBox(height: 3),
          Text('Edit', style: TextStyle(fontSize: 10))
        ]),
      ),
    );
  }
}
