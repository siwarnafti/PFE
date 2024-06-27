import 'package:flutter/material.dart';
import 'package:mobile_app/ui/presentation/extensions/media_query.dart';

import '../../presentation/presentation.dart';
import '../../widgets/successful_popup.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * 0.05, vertical: context.width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            children: [
              xxxxlSpacer(),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      padding: EdgeInsets.all(context.width * 0.02),
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey.withOpacity(0.3)),
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                  SizedBox(
                    width: context.width * 0.26,
                  ),
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              xxlSpacer(),
              const Text(
                'Complete your account',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              xxxsSpacer(),
              const Text('Lorem ipsum dolor sit amet'),
              mdSpacer(),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'First Name',
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                  )),
              SizedBox(
                height: context.height * 0.01,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2), borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.red,
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    hintText: 'Enter your first name',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Last Name',
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                  )),
              SizedBox(
                height: context.height * 0.01,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2), borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.red,
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    hintText: 'Enter your last name',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email Address',
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                  )),
              SizedBox(
                height: context.height * 0.01,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2), borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.red,
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    hintText: 'Enter your email address',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2), borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  obscureText: obscureText,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    fillColor: Colors.red,
                    suffixIcon: IconButton(
                      icon: Icon(!obscureText ? Icons.visibility : Icons.visibility_off),
                      onPressed: () => setState(() {
                        obscureText = !obscureText;
                      }),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Confirm Password',
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2), borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  obscureText: obscureText,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    fillColor: Colors.red,
                    suffixIcon: IconButton(
                      icon: Icon(!obscureText ? Icons.visibility : Icons.visibility_off),
                      onPressed: () => setState(() {
                        obscureText = !obscureText;
                      }),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: context.height * 0.02,
              ),
              mdSpacer(),
              GestureDetector(
                onTap: () {
                  showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return const SuccessfulPopup();
                    },
                  );
                },
                child: Container(
                  height: context.height * 0.06,
                  decoration: BoxDecoration(
                    color: const Color(0xFF5E569B),
                    borderRadius: BorderRadius.all(
                      Radius.circular(context.height * 0.1),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ),
              ),
              mdSpacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Register",
                      style: TextStyle(color: Color(0xFF5E569B), fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
