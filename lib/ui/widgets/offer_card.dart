import 'package:flutter/material.dart';
import 'package:mobile_app/ui/presentation/extensions/list_spacing.dart';
import 'package:mobile_app/ui/views/offer_screen.dart';
import 'package:provider/provider.dart';

import '../../core/models/offer.dart';
import '../../core/viewmodels/offer_view_model.dart';
import '../presentation/presentation.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key, required this.offer});

  final Offer offer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  OfferScreen(offer:offer),),
                  ),

      child: Padding(
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
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(offer.imageUrl),
                  ),
                  xxxsSpacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        offer.title.length > 20 ? '${offer.title.substring(0, 20)}...' : offer.title,
                        style: TextStyles.body1Medium(),
                      ),
                      Text(
                        offer.company,
                        style: TextStyles.calloutMedium(color: Colors.grey.shade500),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => offer.isFavorite
                          ? context.read<FavoriteViewModel>().removeFavoriteOffer(offer)
                          : context.read<FavoriteViewModel>().addFavoriteOffer(offer),
                      child: Icon(
                        offer.isFavorite ? Icons.favorite : Icons.favorite_border_rounded,
                        color: offer.isFavorite ? Colors.red : Colors.grey.shade500,
                      ),
                    ),
                  ),
                ],
              ),
              smSpacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: offer.category
                    .map(
                      (e) => Text(e, style: TextStyles.footnoteBold(color: Colors.grey.shade400)),
                    )
                    .toList()
                    .withSpacing(smSpacer()),
              ),
              xsSpacer(),
              Text(
                offer.description,
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
                    offer.location.length > 15 ? '${offer.location.substring(0, 15)}...' : offer.location,
                    style: TextStyles.calloutMedium(color: Colors.grey.shade300),
                  ),
                  const Spacer(),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '\$${offer.salary} ',
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
      ),
    );
  }
}
