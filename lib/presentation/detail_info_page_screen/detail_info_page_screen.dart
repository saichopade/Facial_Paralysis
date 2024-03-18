import 'package:facial_paralysis/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:facial_paralysis/core/app_export.dart';

class DetailInfoPageScreen extends StatelessWidget {
  const DetailInfoPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.cyan50,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgShapes,
                height: 128.v,
                width: 166.h,
                alignment: Alignment.centerLeft,
              ),
              Spacer(
                flex: 43,
              ),
              CustomElevatedButton(
                height: 74.v,
                width: 250.h,
                text: "DEVAIATION SCORE",
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
              SizedBox(height: 68.v),
              CustomElevatedButton(
                height: 74.v,
                width: 250.h,
                text: "   SEVERITY CHECK",
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: theme.textTheme.titleSmall!,
              ),
              Spacer(
                flex: 56,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgShapes,
                height: 116.v,
                width: 214.h,
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
