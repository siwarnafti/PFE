import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_app/ui/presentation/extensions/media_query.dart';

import '../presentation/presentation.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _appBar() => Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.sm, vertical: Dimensions.xxs),
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
                    'Notification',
                    style: TextStyles.title2Bold(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        );
    return Scaffold(
      body: Column(
        children: [
          xlSpacer(),
          _appBar(),
          SizedBox(
            height: context.height * 0.82,
            width: context.width,
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 0),
              itemBuilder: (context, index) => Column(
                children: [
                  SizedBox(
                    height: context.height * 0.15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            xsSpacer(),
                            const CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage('assets/avatar_user.jpg'),
                            ),
                            xsSpacer(),
                            const Expanded(
                              child: Text(
                                'john recently updated his status to frontend engineer at Amazon',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            xxxsSpacer(),
                            xxxxlSpacer(),
                            const Text(
                              '2 hours ago',
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    margin:
                        EdgeInsets.symmetric(horizontal: context.width * 0.1),
                    width: context.width,
                    color: Colors.grey,
                  )
                ],
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
