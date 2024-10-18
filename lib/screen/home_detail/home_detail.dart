// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flux_store/screen/home_detail/widget/banner_page.dart';
import 'package:flux_store/screen/home_detail/widget/product_list.dart';
import 'package:flux_store/screen/home_detail/widget/recommended_list.dart';
import 'package:flux_store/screen/home_detail/widget/status_with_title.dart';
import 'package:gap/gap.dart';

class HomeDetailScreen extends StatelessWidget {
  const HomeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StatusWithTitle(
                icon: Icons.woman,
                title: 'Women',
              ),
              StatusWithTitle(
                icon: Icons.man,
                title: 'Men',
              ),
              StatusWithTitle(
                icon: Icons.watch,
                title: 'Accessories',
              ),
              StatusWithTitle(
                icon: Icons.brush,
                title: 'Beauty',
              ),
            ],
          ),
        ),
        BannerPage(),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Featured Products",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Show all',
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
        ProductList(),
        Image.asset(
          'assets/images/banner_2.png',
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width * 1,
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommended",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Show all',
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
        RecommendedList(),
        const Gap(20),
      ],
    );
  }
}
