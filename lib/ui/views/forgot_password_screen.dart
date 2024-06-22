import 'package:flutter/material.dart';
import 'package:mobile_app/ui/presentation/presentation.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: deviceWidth * 0.05, vertical: deviceWidth * 0.05),
        child: Column(
          children: [
            xxlSpacer(),
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: EdgeInsets.all(deviceWidth * 0.02),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(0.3)),
                    child: const Icon(Icons.arrow_back),
                  ),
                ),
              ],
            ),
            mdSpacer(),
            const Text(
              "Forgot password",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            SizedBox(
              height: deviceHeight * 0.01,
            ),
            Text(
              "Recover your account password",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: deviceHeight * 0.06,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email Address',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                )),
            SizedBox(
              height: deviceHeight * 0.01,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12)),
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
              height: deviceHeight * 0.06,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => Container(
                    height: 20,
                    width: 20,
                    color: Colors.green,
                  ),
                );
              },
              child: Container(
                height: deviceHeight * 0.06,
                width: deviceWidth * 0.7,
                decoration: BoxDecoration(
                  color: const Color(0xFF5E569B),
                  borderRadius: BorderRadius.all(
                    Radius.circular(deviceHeight * 0.1),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
