import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/ui/views/splash_screen.dart';
import 'package:provider/provider.dart';

import 'core/viewmodels/offer_view_model.dart';

void main() async {
  //  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(ChangeNotifierProvider(create: (context) => OfferViewModel(), child: const CareerHiveApp()));
}

class CareerHiveApp extends StatelessWidget {
  const CareerHiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return MaterialApp(
      //for run
      title: 'CareerHive',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const SplashScreen(),
    );
  }
}
