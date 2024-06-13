import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_app/ui/presentation/extensions/media_query.dart';

import '../presentation/presentation.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  int _currentIndex = 0;
  final List _searchItems = [
    'All Jobs',
    'Full Time',
    'Part Time',
    'Remote',
    'Internship',
    'Freelance',
    'Temporary',
    'Contract',
    'Commission',
    'Volunteer',
  ];

  Widget _appBar() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.sm, vertical: Dimensions.xxs),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: const EdgeInsets.all(Dimensions.xxs),
                decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey.withOpacity(0.1)),
                child: const Icon(Icons.arrow_back),
              ),
            ),
            const Spacer(),
            Text('My Favorite', style: TextStyles.title2Bold()),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.filter_list_outlined), iconSize: Dimensions.xmd),
          ],
        ),
      );

  Widget _searchWidget() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.sm),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search ',
            hintStyle: TextStyles.body0Semibold(color: Colors.grey.withOpacity(0.8)),
            prefixIcon: const Icon(Icons.search),
            suffixIcon: Icon(FontAwesomeIcons.sliders, size: Dimensions.md, color: Colors.black.withOpacity(0.8)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.sm),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.sm),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.sm),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: Paddings.verticalXxxs,
          ),
          style: TextStyles.calloutRegular(color: Colors.black),
        ),
      );

  Widget _searchItemsWidget() => Container(
        height: context.height * 0.05,
        padding: Paddings.horizontalSm,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: Paddings.allXxxs,
                    decoration: BoxDecoration(
                      color: _currentIndex != index ? Colors.white : const Color(0xFF5E569B).withOpacity(0.8),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(Dimensions.sm),
                      ),
                      border: Border.fromBorderSide(
                        BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      ),
                    ),
                    child: Text(
                      _searchItems[index],
                      style: TextStyles.calloutBold(
                        color: _currentIndex != index ? Colors.black.withOpacity(0.5) : Colors.white,
                      ),
                    ),
                  ),
                  xxxsSpacer(),
                ],
              ),
            );
          },
        ),
      );

  Widget _favoriteOffersWidget() => Column(
        children: [
          _favoriteOfferInDay(),
          mdSpacer(),
          _favoriteOfferInDay(),
        ],
      );

  Widget _favoriteOfferInDay() => Padding(
        padding: Paddings.horizontalSm,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('18 June, 2021', style: TextStyles.body1Medium(color: Colors.grey.shade500)),
            mdSpacer(),
            _favoriteOfferCard(),
            mdSpacer(),
            _favoriteOfferCard(),
          ],
        ),
      );

  Widget _favoriteOfferCard() => Container(
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
                      'Front End Developer',
                      style: TextStyles.body1Medium(),
                    ),
                    Text(
                      'Twitter,In New York',
                      style: TextStyles.calloutMedium(color: Colors.grey.shade500),
                    ),
                  ],
                ),
                const Spacer(),
                const Expanded(
                  child:  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    
                  ),
                ),
              ],
            ),
            smSpacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.location_on_outlined, color: Colors.grey, size: Dimensions.md),
                xxxsSpacer(),
                Text(
                  'Ho Chi Minh City',
                  style: TextStyles.calloutMedium(color: Colors.grey),
                ),
                const Spacer(),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '\$240 - \$2560',
                        style: TextStyles.body1Bold(color: Colors.black),
                      ),
                      // TextSpan(
                      //   text: '/Month',
                      //   style: TextStyles.calloutMedium(color: Colors.grey.shade300),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  Widget _body() => Container(
        color: Colors.white,
        width: context.width,
        height: context.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              xxlSpacer(),
              _appBar(),
              xlSpacer(),
              _searchWidget(),
              smSpacer(),
              _searchItemsWidget(),
              xmdSpacer(),
              _favoriteOffersWidget(),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return _body();
  }
}
