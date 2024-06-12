import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:mobile_app/ui/presentation/extensions/list_spacing.dart';
import 'package:mobile_app/ui/presentation/extensions/media_query.dart';

import '../presentation/presentation.dart';
import '../widgets/customLimitedDropDown.dart';
import '../widgets/offerIndicator.dart';
import '../widgets/offer_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.1),
      width: context.width,
      height: context.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimensions.sm, vertical: Dimensions.xxs),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/avatar_user.jpg'),
                  ),
                  xsSpacer(),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi Welcome 🙌',
                        style: TextStyles.calloutRegular(color: Colors.grey.withOpacity(0.8)),
                      ),
                      Text(
                        'Dustin Bates',
                        style: TextStyles.buttonBold(color: Colors.black),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                    iconSize: Dimensions.xmd,
                  ),
                  Stack(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications_none),
                        iconSize: Dimensions.xmd,
                      ),
                      Positioned(
                        top: 16,
                        left: 24,
                        child: Container(
                          width: context.width * 0.024,
                          height: context.width * 0.024,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF85358),
                            borderRadius: BorderRadius.circular(Dimensions.md),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            smSpacer(),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: context.width,
                  height: context.height * 0.3,
                  color: const Color(0xFF5E569B),
                ),
                Padding(
                  padding: EdgeInsets.only(top: context.height * 0.05),
                  child: Container(
                    width: context.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Dimensions.md),
                    ),
                    child: Padding(
                      padding: Paddings.allSm,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Keyword",
                            style: TextStyles.calloutBold(color: Colors.black),
                          ),
                          xxsSpacer(),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Search for anything',
                              hintStyle: TextStyles.body0Semibold(color: Colors.grey.withOpacity(0.8)),
                              prefixIcon: const Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(Dimensions.sm),
                                borderSide: const BorderSide(color: Colors.grey),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(Dimensions.sm),
                                borderSide: const BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(Dimensions.sm),
                                borderSide: const BorderSide(color: Colors.grey),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: Paddings.verticalXxxs,
                            ),
                            style: TextStyles.calloutRegular(color: Colors.black),
                          ),
                          xxsSpacer(),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Location',
                                    style: TextStyles.calloutBold(color: Colors.black),
                                  ),
                                  xxsSpacer(),
                                  SizedBox(
                                    width: context.width * 0.33,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'City,ect',
                                        hintStyle: TextStyles.body0Semibold(color: Colors.grey.withOpacity(0.8)),
                                        prefixIcon: const Icon(Icons.location_on_outlined),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(Dimensions.sm),
                                          borderSide: const BorderSide(color: Colors.grey),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(Dimensions.sm),
                                          borderSide: const BorderSide(color: Colors.grey),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(Dimensions.sm),
                                          borderSide: const BorderSide(color: Colors.grey),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding: Paddings.verticalXxxs,
                                      ),
                                      style: TextStyles.calloutRegular(color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Distance',
                                    style: TextStyles.calloutBold(color: Colors.black),
                                  ),
                                  xxsSpacer(),
                                  SizedBox(
                                    width: context.width * 0.33,
                                    child: const LimitedDropdown(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          mdSpacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: context.width,
                              height: context.height * 0.06,
                              decoration: BoxDecoration(
                                color: const Color(0xFF5E569B),
                                borderRadius: BorderRadius.circular(Dimensions.sm),
                              ),
                              child: Center(
                                child: Text(
                                  'Search',
                                  style: TextStyles.buttonMedium(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            smSpacer(),
            Padding(
              padding: Paddings.horizontalSm,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Today🔥',
                    style: TextStyles.buttonBold(color: Colors.black),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      3,
                      (index) => OfferIndicator(
                        key: ValueKey(index), // Key for efficient rebuild
                        isSelected: index == selectedIndex,
                        color: Colors.red, // Optional: set custom color for selected
                      ),
                    ).withSpacing(xxxxsSpacer()),
                  ),
                ],
              ),
            ),
            xsSpacer(),
            CarouselSlider(
              options: CarouselOptions(
                enableInfiniteScroll: true,
                autoPlay: true,
                aspectRatio: 1.6,
                viewportFraction: 0.9,
                clipBehavior: Clip.none,
              ),
              items: List.generate(
                5,
                (index) => const OfferCard(), // Change 5 to the number of OfferCards you want
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}