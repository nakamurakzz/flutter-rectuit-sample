import 'package:contents_management/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                    onPlessed: changeEnabledStatus,
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
        style: ElevatedButton.styleFrom(
            backgroundColor: ThemeColors.buttonSecondaryColor,
            foregroundColor: ThemeColors.buttonPrimaryColor),
        onPressed: () {
          changeEnabledStatus();
        },
        child: Column(children: [
          SvgPicture.asset(
            'assets/icons/+.svg',
            width: 18,
            height: 18,
          ),
          const SizedBox(height: 3),
          const Text('New Page', style: TextStyle(fontSize: 10))
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
        style: ElevatedButton.styleFrom(
            backgroundColor: ThemeColors.buttonPrimaryColor,
            foregroundColor: ThemeColors.buttonSecondaryColor),
        onPressed: () {
          changeEnabledStatus();
        },
        child: Column(children: [
          SvgPicture.asset(
            'assets/icons/done.svg',
            width: 18,
            height: 18,
          ),
          const SizedBox(height: 3),
          const Text('Done', style: TextStyle(fontSize: 10))
        ]),
      ),
    );
  }
}

class EditButton extends StatelessWidget {
  final void Function() onPlessed;
  const EditButton({super.key, required this.onPlessed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: ThemeColors.buttonPrimaryColor,
            foregroundColor: ThemeColors.buttonSecondaryColor),
        onPressed: () {
          onPlessed();
        },
        child: Column(children: [
          SvgPicture.asset(
            'assets/icons/edit.svg',
            width: 18,
            height: 18,
          ),
          const SizedBox(height: 3),
          const Text('Edit', style: TextStyle(fontSize: 10))
        ]),
      ),
    );
  }
}

class CancelButton extends StatelessWidget {
  final void Function() onpressed;
  const CancelButton({super.key, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: ThemeColors.buttonNormalyColor,
            foregroundColor: ThemeColors.buttonSecondaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4)),
        onPressed: () {
          onpressed();
        },
        child: Column(children: [
          SvgPicture.asset(
            'assets/icons/cancel.svg',
            width: 14,
            height: 14,
          ),
          const SizedBox(height: 3),
          const Text('Cancel', style: TextStyle(fontSize: 10))
        ]),
      ),
    );
  }
}

class SavedButton extends StatelessWidget {
  final void Function() onpressed;
  const SavedButton({super.key, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ThemeColors.buttonPrimaryColor,
          foregroundColor: ThemeColors.buttonSecondaryColor,
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
        ),
        onPressed: () {
          onpressed();
        },
        child: Column(children: [
          SvgPicture.asset(
            'assets/icons/save.svg',
            width: 14,
            height: 14,
          ),
          const SizedBox(height: 3),
          const Text('Save', style: TextStyle(fontSize: 10))
        ]),
      ),
    );
  }
}
