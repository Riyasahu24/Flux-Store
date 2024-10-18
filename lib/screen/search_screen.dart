// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flux_store/screen/product/product.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.shade300,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 0.5,
                        blurRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      Gap(6),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
              Gap(20),
              Flexible(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.shade300,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 0.5,
                        blurRadius: 0.5,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/icons/filter.png',
                  ),
                ),
              ),
            ],
          ),
          Gap(20),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => ProductScreen(),
                  ));
            },
            child: Image.asset(
              'assets/images/banner_3.png',
              width: MediaQuery.of(context).size.width * 1,
              fit: BoxFit.cover,
            ),
          ),
          Gap(20),
          Image.asset(
            'assets/images/banner_3.png',
            width: MediaQuery.of(context).size.width * 1,
            fit: BoxFit.cover,
          ),
          Gap(20),
          Image.asset(
            'assets/images/banner_3.png',
            width: MediaQuery.of(context).size.width * 1,
            fit: BoxFit.cover,
          ),
          Gap(20),
          Image.asset(
            'assets/images/banner_3.png',
            width: MediaQuery.of(context).size.width * 1,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
