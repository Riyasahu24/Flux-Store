// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: 250,
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/get_started.jpeg',
                  height: 180,
                  fit: BoxFit.cover,
                  width: 130,
                ),
              ),
              Gap(8),
              Text(
                'Turtleneck Sweater',
                style: TextStyle(fontSize: 12),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.attach_money,
                    size: 20,
                  ),
                  Text(
                    '39.99',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
