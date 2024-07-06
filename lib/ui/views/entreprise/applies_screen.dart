import 'package:flutter/material.dart';
import 'package:mobile_app/ui/presentation/extensions/media_query.dart';

import '../../presentation/presentation.dart';

class AppliesScreen extends StatefulWidget {
  const AppliesScreen({super.key});

  @override
  State<AppliesScreen> createState() => _AppliesScreenState();
}

class _AppliesScreenState extends State<AppliesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            _appBar(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.width * 0.05,
                ),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(Dimensions.md),
                        border: Border.all(color: Colors.grey.withOpacity(0.2)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10.0,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.symmetric(
                        vertical: context.height * 0.02,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: context.width * 0.1,
                                backgroundImage: const AssetImage('assets/avatar_user.jpg'),
                              ),
                              xsSpacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dustin Bates',
                                    style: TextStyles.body1Medium(),
                                  ),
                                  Text(
                                    'UI/UX Designer',
                                    style: TextStyles.body0Semibold(color: Colors.grey.withOpacity(0.8)),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Applied on :',
                                    style: TextStyles.body0Semibold(color: Colors.black),
                                  ),
                                  Text(
                                    '12/12/2021',
                                    style: TextStyles.body0Semibold(color: Colors.grey.withOpacity(0.8)),
                                  ),
                                ],
                              ),
                              xxxsSpacer(),
                            ],
                          ),
                          const Divider(),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: context.width * 0.05,
                              vertical: context.height * 0.02,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Cover Letter',
                                  style: TextStyles.body0Bold(color: Colors.black),
                                ),
                                Text(
                                  'I am a UI/UX Designer with 5 years of experience...',
                                  style: TextStyles.body0Regular(color: Colors.grey.withOpacity(0.8)),
                                  overflow: TextOverflow.visible,
                                ),
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('View CV'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: context.width * 0.05,
                              vertical: context.height * 0.02,
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Status',
                                      style: TextStyles.body0Bold(color: Colors.black),
                                    ),
                                    Text(
                                      'Pending',
                                      style: TextStyles.body0Regular(color: Colors.grey.withOpacity(0.8)),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius: BorderRadius.circular(Dimensions.sm),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: Dimensions.xs,
                                        vertical: context.height * 0.01,
                                      ),
                                      child: Text(
                                        'Accept',
                                        style: TextStyles.body0Regular(color: Colors.white),
                                      ),
                                    ),
                                    xxxsSpacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(Dimensions.sm),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: Dimensions.xs,
                                        vertical: context.height * 0.01,
                                      ),
                                      child: Text(
                                        'Decline',
                                        style: TextStyles.body0Regular(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _appBar() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.sm, vertical: Dimensions.xxs),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                iconSize: Dimensions.xmd,
              ),
            ),
            SizedBox(
              width: context.width,
              child: Center(
                child: Text(
                  'Applied Candidates',
                  style: TextStyles.title2Bold(),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      );
}
