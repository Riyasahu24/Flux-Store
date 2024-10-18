// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flux_store/screen/login/signup.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  final List _pageView = [
    {
      'image': 'assets/images/get_started.jpeg',
      'title': 'Discover something new',
      'subTitle': 'Special new arrival just for you',
    },
    {
      'image': 'assets/images/get_started.jpeg',
      'title': 'Update trendy outfit',
      'subTitle': 'Favorite brands and hottest trends',
    },
    {
      'image': 'assets/images/get_started.jpeg',
      'title': 'Explore your true style',
      'subTitle': 'Relax and let us bring the style to you',
    }
  ];

  final PageController _pageController = PageController();

  // final TabController _tabController = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.black54,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .8,
              child: PageView.builder(
                controller: _pageController,
                itemCount: 3,
                itemBuilder: (context, index) => Column(
                  children: [
                    Spacer(
                      flex: 2,
                    ),
                    Text(
                      _pageView[index]['title'],
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      _pageView[index]['subTitle'],
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        _pageView[index]['image'],
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            // TabPageSelector(
            //   controller: _pageController,
            // ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => Signup(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 16)),
              child: const Text(
                'Start Shopping',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
