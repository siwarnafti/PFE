import 'package:flutter/material.dart';
import 'package:mobile_app/ui/presentation/extensions/media_query.dart';

import '../presentation/presentation.dart';

class ApplyJobScreen extends StatelessWidget {
  const ApplyJobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        xxxxlSpacer(),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          padding: EdgeInsets.all(context.width * 0.02),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(0.3)),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.width * 0.25,
                      ),
                      const Text(
                        'Job Detail',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),



      ],),
    );
  }
}