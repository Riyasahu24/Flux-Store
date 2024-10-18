import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flux_store/screen/onboarding/onboarding.dart';
import 'package:gap/gap.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width * 1,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              opacity: 0.8,
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
              image: NetworkImage(
                  'https://c0.wallpaperflare.com/preview/298/581/92/fashion-female-model-clothes.jpg'),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Welcome to GemStore!',
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
              const Gap(6),
              const Text(
                'The home for a Fashionista ',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .07,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const OnboardingScreen(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 16)),
                child: const Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .2,
              )
            ],
          )),
    );
  }
}
