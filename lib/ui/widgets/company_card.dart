import 'package:flutter/material.dart';
import 'package:mobile_app/ui/presentation/presentation.dart';

import '../../core/models/company.dart';

class CompanyCard extends StatelessWidget {
  const CompanyCard({super.key, required this.company});

  final Company company;

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
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(company.imageUrl),
          ),
          smSpacer(),
          Text(company.name, style: TextStyles.body1Medium()),
          smSpacer(),
          Text("${company.openSlots} jobs open", style: TextStyles.calloutMedium(color: Colors.grey.shade500)),
        ],
      ),
    );
  }
}
