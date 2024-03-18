import 'package:flutter/material.dart';
import 'package:facial_paralysis/core/app_export.dart';

class CameraPageScreen extends StatelessWidget {
  const CameraPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgShapes,
                height: 128.v,
                width: 166.h,
              ),
              SizedBox(height: 55.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 377.v,
                  width: 332.h,
                  decoration: BoxDecoration(
                    color: appTheme.cyan100,
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              _buildSix(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 34.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 56.v,
                bottom: 86.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCamera,
                    height: 61.v,
                    width: 70.h,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "CAMERA",
                    style: theme.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 52.v,
                  width: 60.h,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(
                      30.h,
                    ),
                    border: Border.all(
                      color: appTheme.black900,
                      width: 1.h,
                    ),
                  ),
                ),
                Container(
                  height: 177.v,
                  width: 214.h,
                  margin: EdgeInsets.only(left: 6.h),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 32.h,
                            vertical: 14.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgShapes,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(height: 65.v),
                              Text(
                                "GALLERY",
                                style: theme.textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgReply,
                        height: 70.adaptSize,
                        width: 70.adaptSize,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(right: 28.h),
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
