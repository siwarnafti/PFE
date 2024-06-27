import 'package:flutter/material.dart';
import 'package:mobile_app/ui/presentation/extensions/media_query.dart';
import 'package:mobile_app/ui/views/home_tab.dart';

import '../../presentation/presentation.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  int _genderchecked = 0;

  Widget _appBar() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.sm, vertical: Dimensions.xxs),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeTab(
                                initialIndex: 2,
                              )));
                },
                icon: const Icon(Icons.arrow_back),
                iconSize: Dimensions.xmd,
              ),
            ),
            SizedBox(
              width: context.width,
              child: Center(
                child: Text(
                  'Profile',
                  style: TextStyles.title2Bold(),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      );

  Widget _userInfo() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.sm),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              width: context.width,
              height: context.height * 0.16,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(Dimensions.xxs),
                image: const DecorationImage(
                  image: AssetImage('assets/avatar_user.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: Container(
                padding: const EdgeInsets.all(Dimensions.xxxxs),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2.5),
                ),
                child: const Icon(
                  Icons.camera,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              bottom: -50,
              child: Container(
                padding: const EdgeInsets.all(Dimensions.xxxxs),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2.5),
                ),
                child: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/avatar_user.jpg'),
                ),
              ),
            ),
            Positioned(
              bottom: -40,
              child: Container(
                padding: const EdgeInsets.all(Dimensions.xxxxs),
                margin: const EdgeInsets.only(left: 80),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2.5),
                ),
                child: const Icon(
                  Icons.camera,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ],
        ),
      );

  Widget _saveButton() => Container(
        padding: const EdgeInsets.symmetric(vertical: Dimensions.xxs),
        width: context.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(Dimensions.md),
        ),
        child: Center(child: Text("Save Changes", style: TextStyles.buttonRegular(color: Colors.grey))),
      );

  Widget _field({required String label, required String value}) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: TextStyles.body0Regular(color: Colors.grey.shade500)),
            xxxsSpacer(),
            TextField(
              decoration: InputDecoration(
                hintText: value,
                hintStyle: TextStyles.body0Semibold(color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Dimensions.sm),
                  borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Dimensions.sm),
                  borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Dimensions.sm),
                  borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.sm,
                  vertical: Dimensions.xxxs,
                ),
              ),
              style: TextStyles.calloutRegular(color: Colors.black),
            ),
          ],
        ),
      );

  Widget _genderField() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Gender', style: TextStyles.body0Regular(color: Colors.grey.shade500)),
            xxxsSpacer(),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _genderchecked = 0;
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: Dimensions.xxl, vertical: Dimensions.xxxs),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black.withOpacity(0.8)),
                          borderRadius: BorderRadius.circular(Dimensions.sm),
                        ),
                        child: Text(
                          'Male',
                          style: TextStyles.body0Semibold(color: Colors.black),
                        ),
                      ),
                      if (_genderchecked == 0)
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            padding: const EdgeInsets.all(Dimensions.xxxs),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.check_circle,
                              color: Color(0xFF5E569B),
                              size: 25,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                xxxsSpacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _genderchecked = 1;
                    });
                  },
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: Dimensions.xxl, vertical: Dimensions.xxxs),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black.withOpacity(0.8)),
                          borderRadius: BorderRadius.circular(Dimensions.sm),
                        ),
                        child: Text(
                          'Female',
                          style: TextStyles.body0Semibold(color: Colors.black),
                        ),
                      ),
                      if (_genderchecked == 1)
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            padding: const EdgeInsets.all(Dimensions.xxxs),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.check_circle,
                              color: Color(0xFF5E569B),
                              size: 25,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      );

  Widget _locationField() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Location', style: TextStyles.body0Regular(color: Colors.grey.shade500)),
            xxxsSpacer(),
            TextField(
              minLines: 4,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'Location',
                hintStyle: TextStyles.body0Semibold(color: Colors.black.withOpacity(0.6)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Dimensions.sm),
                  borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Dimensions.sm),
                  borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Dimensions.sm),
                  borderSide: BorderSide(color: Colors.black.withOpacity(0.8)),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.sm,
                  vertical: Dimensions.xxxs,
                ),
              ),
              style: TextStyles.calloutRegular(color: Colors.black),
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
              xmdSpacer(),
              _userInfo(),
              xxxlSpacer(),
              _field(label: 'First Name', value: 'Andy'),
              xsSpacer(),
              _field(label: 'Last Name', value: 'Lexsian'),
              xsSpacer(),
              _field(label: 'Email', value: 'AndyLexsian@gmail.com'),
              xsSpacer(),
              _field(label: 'Date of Birth', value: '24 february 1996'),
              xsSpacer(),
              _genderField(),
              xsSpacer(),
              _locationField(),
              xlgSpacer(),
              _saveButton(),
              xlgSpacer(),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }
}
