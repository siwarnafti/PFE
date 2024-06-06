import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const CareerHiveApp());
}

class CareerHiveApp extends StatelessWidget {
  const CareerHiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CareerHive',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const  OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CareerHive',
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
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Stack (children: [Container(
          height: context.size?.height,
          width: context.size?.width,
          color: Colors.purple,

         )],),
    
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
     final deviceWidth = MediaQuery.sizeOf(context).width;
   

;
    return SafeArea(
      child: Scaffold(
        body:Stack(children: [ 
          Container(height: deviceHeight,width: deviceWidth,color: Colors.purple,),
          Align( alignment: Alignment.bottomCenter,

            child: Container(height: deviceHeight*0.4,
            
            width: deviceWidth,decoration:  const BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50) ,), ) ,

child: Column(children: [Text("Discover job"),Text("")],),            
            ),
          )
        ],)
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  OnboardingPage({required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hi, Welcome Back!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility_off),
              ),
              obscureText: true,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                Text('Remember Me'),
                TextButton(
                  onPressed: () {},
                  child: Text('Forgot Password'),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Sign In'),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              icon: Icon(Icons.g_translate),
              label: const Text('Continue with Google'),
              onPressed: () {},
            ),
            SizedBox(width: 10),
            ElevatedButton.icon(
              icon: Icon(Icons.apple),
              label: Text('Continue with Apple'),
              onPressed: () {},
            ),
            const SizedBox(height: 50,),
            TextButton(
              onPressed: () {},
              child: const Text("Don't have an account? Sign Up"),
            ),
          ],
        ),
      ),
    );
  }
}
