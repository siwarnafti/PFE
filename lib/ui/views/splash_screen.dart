import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_app/core/viewmodels/user_view_model.dart';
import 'package:mobile_app/ui/views/home_tab.dart';
import 'package:mobile_app/ui/views/sign/on_boarding_screen.dart';
import 'package:provider/provider.dart';

import '../../core/viewmodels/offer_view_model.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read<OfferViewModel>().loadFavoriteOffers();
    _loadUser();
  }

  _loadUser() async {
    await context.read<UserViewModel>().init();
    await Future.delayed(const Duration(seconds: 6));
    if (context.read<UserViewModel>().isSignedUp) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeTab()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF5E569B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FAST HIRE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Best Place to Hire Professional Worker',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            LinearProgressIndicator(
              backgroundColor: Colors.white,
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF5E569B)),
            ),
          ],
        ),
      ),
    );
  }
}
