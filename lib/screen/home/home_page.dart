// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flux_store/screen/add_to_bag/add_to_bag.dart';
import 'package:flux_store/screen/home/cubit/home_cubit.dart';
import 'package:flux_store/screen/home_detail/home_detail.dart';
import 'package:flux_store/screen/notification/notification.dart';
import 'package:flux_store/screen/profile/profile.dart';
import 'package:flux_store/screen/search_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _screen = [
    HomeDetailScreen(),
    SearchScreen(),
    AddToBag(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            forceMaterialTransparency: true,
            centerTitle: true,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            title: Text('Gemstore'),
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => NotificationScreen(),
                      ));
                },
                icon: Icon(Icons.notifications_outlined),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: _screen[state.currentIndex],
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
            ),
            child: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search_outlined), label: 'search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag_outlined), label: 'bag'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'profile'),
              ],
              currentIndex: state.currentIndex,
              onTap: (value) {
                context.read<HomeCubit>().setCurrentIndex(value);
              },
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey.shade400,
              iconSize: 32,
              showSelectedLabels: false,
            ),
          ),
        );
      },
    );
  }
}
