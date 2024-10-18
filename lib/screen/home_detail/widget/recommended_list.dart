// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade100),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/get_started.jpeg',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'White fashion hoodie',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Gap(6),
                    Row(
                      children: [
                        Icon(Icons.attach_money),
                        Text(
                          '29.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
