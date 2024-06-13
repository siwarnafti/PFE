import 'package:flutter/material.dart';
import 'package:mobile_app/ui/presentation/presentation.dart';

class CompanyCard extends StatelessWidget {
  const CompanyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Paddings.allMd,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/avatar_user.jpg'),
          ),
          smSpacer(),
          Text("Spotify USA Inc", style: TextStyles.body1Medium()),
          smSpacer(),
          Text("9 jobs open", style: TextStyles.calloutMedium(color: Colors.grey.shade500)),
        ],
      ),
    );
  }
}