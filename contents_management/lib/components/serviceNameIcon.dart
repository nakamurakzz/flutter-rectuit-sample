import 'package:flutter/material.dart';

class ServiceNameIcon extends StatelessWidget {
  const ServiceNameIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.account_circle,
          size: 32,
        ),
        Text("Service Name", style: TextStyle(fontSize: 32)),
      ],
    );
  }
}
