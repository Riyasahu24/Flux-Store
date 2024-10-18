import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.arrow_back_ios),
          ),
        ),
        title: const Text(
          'Notification',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Gap(20),
          _NotificationDetailCard(
            title: 'Good morning! Get 20% Voucher',
            subTitle: 'summer sale up to 20% off Limited voucher. Get now!',
          ),
          _NotificationDetailCard(
            title: 'Special offer just for you',
            subTitle: 'New Autumn collection 30% off',
          ),
          _NotificationDetailCard(
            title: 'Holiday sale 50%',
            subTitle: 'Tap here to get 50% voucher',
          )
        ],
      ),
    );
  }
}

class _NotificationDetailCard extends StatelessWidget {
  const _NotificationDetailCard({required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200, spreadRadius: 2, blurRadius: 5),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const Gap(4),
          Text(
            subTitle,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
