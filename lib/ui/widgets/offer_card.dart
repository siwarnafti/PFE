import 'package:flutter/material.dart';
import 'package:mobile_app/ui/presentation/extensions/list_spacing.dart';


import '../presentation/presentation.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Paddings.horizontalSm,
      child: Container(
        padding: Paddings.allMd,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.grey.shade200),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10.0,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/avatar_user.jpg'),
                ),
                xxsSpacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jr. Front-End Designer',
                      style: TextStyles.body1Medium(),
                    ),
                    Text(
                      'KickStarter Studio',
                      style: TextStyles.calloutMedium(color: Colors.grey.shade500),
                    ),
                  ],
                ),
                const Spacer(),
                Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.grey.shade500,
                  size: 28.0,
                ),
              ],
            ),
            smSpacer(),
            Padding(
              padding: Paddings.horizontalSm,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Front end', style: TextStyles.footnoteBold(color: Colors.grey.shade400)),
                  Text('Full Time', style: TextStyles.footnoteBold(color: Colors.grey.shade400)),
                  Text('Gsap', style: TextStyles.footnoteBold(color: Colors.grey.shade400)),
                ].withSpacing(smSpacer()),
              ),
            ),
            xsSpacer(),
            Text(
              'We are looking for a Jr. Front-End Designer to join our team.We are looking for a Jr. Front-End Designer to join our team.',
              style: TextStyles.footnoteMedium(
                color: Colors.grey.shade300,
              ),
            ),
            xsSpacer(),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey.shade500,
                  size: 20.0,
                ),
                xxsSpacer(),
                Text(
                  'Ho Chi Minh City',
                  style: TextStyles.calloutMedium(color: Colors.grey.shade300),
                ),
                const Spacer(),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '\$180,000 ',
                        style: TextStyles.body1Bold(color: Colors.black),
                      ),
                      TextSpan(
                        text: '/year',
                        style: TextStyles.calloutMedium(color: Colors.grey.shade300),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}