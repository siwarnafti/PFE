import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: deviceHeight,
          width: deviceWidth,
          color: Colors.purple,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: deviceHeight * 0.4,
            padding: EdgeInsets.all(deviceWidth * 0.1),
            width: deviceWidth,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                topLeft: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const Text(
                  "Discover job",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  height: deviceHeight * 0.004,
                ),
                const Text(
                  "Opportunites Effotlessly!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: deviceHeight * 0.01,
                ),
                const Text(
                  "welcome to our app in which you can sing as en employee or as a society",
                  textAlign: TextAlign.center,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(right: deviceWidth * 0.04),
                            height: deviceHeight * 0.06,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.all(
                                Radius.circular(deviceHeight * 0.1),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: deviceHeight * 0.1,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {

                           
                          },
                          child: Container(
                            height: deviceHeight * 0.06,
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(deviceHeight * 0.1))),
                            child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "I am an Employee",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
