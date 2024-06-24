import 'package:flutter/material.dart';
import 'package:mobile_app/ui/presentation/extensions/media_query.dart';

import '../../presentation/presentation.dart';
import '../../widgets/curve_painter.dart';

class ChangePasswordBottomSheet extends StatelessWidget {
  const ChangePasswordBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        onTap: () {},
        child: DraggableScrollableSheet(
          builder: (context, scrollController) => CustomPaint(
            size: Size(context.width, context.height * 0.1),
            painter: CurvePainter(
              reversed: true,
              colors: [
                Colors.white,
                Colors.white,
              ],
              deviceHeight: context.height,
              direction: Axis.vertical,
              curveStrength: 1.5,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimensions.md,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text(
                        'Change Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Old Password',
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
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'New Password',
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
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Confirm New Password',
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
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Change Password'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
