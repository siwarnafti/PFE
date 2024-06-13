import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_app/ui/views/on_boarding_screen.dart';
import 'package:mobile_app/ui/views/signin_screen.dart';
import 'package:provider/provider.dart';

import '../../core/viewmodels/offer_view_model.dart';
import 'home_tab.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    context.read<FavoriteViewModel>().loadFavoriteOffers();
    Timer(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      backgroundColor: const Color(0xFF5E569B),
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
              valueColor: AlwaysStoppedAnimation<Color>(const Color(0xFF5E569B)),
            ),
          ],
        ),
      ),
    );
  }
}
