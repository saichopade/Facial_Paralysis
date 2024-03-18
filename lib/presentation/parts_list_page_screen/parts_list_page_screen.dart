import 'package:facial_paralysis/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:facial_paralysis/core/app_export.dart';

class PartsListPageScreen extends StatelessWidget {
  const PartsListPageScreen({Key? key})
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
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgShapes,
                height: 128.v,
                width: 166.h,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 59.v),
              Text(
                "Which part details do you want to check ??",
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleSmallSemiBold,
              ),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                text: "EYES",
                margin: EdgeInsets.only(
                  left: 28.h,
                  right: 22.h,
                ),
                buttonStyle: CustomButtonStyles.fillCyanA,
                buttonTextStyle: CustomTextStyles.titleMediumGray900,
              ),
              SizedBox(height: 27.v),
              CustomElevatedButton(
                text: "NOSE",
                margin: EdgeInsets.only(
                  left: 28.h,
                  right: 22.h,
                ),
                buttonStyle: CustomButtonStyles.fillCyanA1,
                buttonTextStyle: CustomTextStyles.titleMediumOnError,
              ),
              SizedBox(height: 27.v),
              CustomElevatedButton(
                text: "EYEBROWS",
                margin: EdgeInsets.only(
                  left: 28.h,
                  right: 22.h,
                ),
                buttonStyle: CustomButtonStyles.fillCyanA1,
                buttonTextStyle: theme.textTheme.titleMedium!,
              ),
              SizedBox(height: 40.v),
              _buildSeven(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 291.v,
        width: 364.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgShapes,
              height: 116.v,
              width: 214.h,
              alignment: Alignment.bottomRight,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgUndrawMedicineB1Ol,
              height: 244.v,
              width: 344.h,
              alignment: Alignment.topLeft,
            ),
          ],
        ),
      ),
    );
  }
}
