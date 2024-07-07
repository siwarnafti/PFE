import 'package:flutter/material.dart';
import 'package:mobile_app/ui/presentation/presentation.dart';
import 'package:mobile_app/ui/views/entreprise/offers_screen.dart';
import 'package:mobile_app/ui/views/home_tab.dart';


class EntrepriseSignInScreen extends StatefulWidget {
  const EntrepriseSignInScreen({super.key});

  @override
  State<EntrepriseSignInScreen> createState() => _EntrepriseSignInScreenState();
}

class _EntrepriseSignInScreenState extends State<EntrepriseSignInScreen> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
      child: Column(
        children: [
          xxxxlSpacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  padding: EdgeInsets.all(deviceWidth * 0.02),
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey.withOpacity(0.3)),
                  child: const Icon(Icons.arrow_back),
                ),
              ),
              // SizedBox(
              //   width: deviceWidth * 0.26,
              // ),
              const Text(
                'Sign In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox.shrink()
            ],
          ),
          xxlSpacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Entreprise Name',
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                  )),
              SizedBox(
                height: deviceHeight * 0.01,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2), borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.red,
                    labelStyle: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                    ),
                    hintText: 'Enter the Entreprise name',
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
                height: deviceHeight * 0.02,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Token',
                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.01,
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
                    hintText: 'Enter the Entreprise Token',
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
                height: deviceHeight * 0.02,
              ),
             

              SizedBox(
                height: deviceHeight * 0.1,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OfferScreen()),
                  );
                },
                child: Container(
                  height: deviceHeight * 0.06,
                  decoration: BoxDecoration(
                    color: const Color(0xFF5E569B),
                    borderRadius: BorderRadius.all(
                      Radius.circular(deviceHeight * 0.1),
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
              SizedBox(
                height: deviceHeight * 0.05,
              ),
           
            
            ],
          ),
        ],
      ),
    ));
  }
}
