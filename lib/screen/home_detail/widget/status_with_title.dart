import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StatusWithTitle extends StatelessWidget {
  const StatusWithTitle({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              shape: BoxShape.circle, border: Border.all(color: Colors.black)),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black,
            child: Icon(
              icon,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
        const Gap(6),
        Text(
          title,
        )
      ],
    );
  }
}
