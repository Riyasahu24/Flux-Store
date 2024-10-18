// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BannerPage extends StatelessWidget {
  const BannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
        width: MediaQuery.of(context).size.width * 1,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/banner_1.png'),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              'Autumn',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Collection',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '2024',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
