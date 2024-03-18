import 'package:facial_paralysis/widgets/custom_text_form_field.dart';
import 'package:facial_paralysis/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:facial_paralysis/core/app_export.dart';

class RegistrationPageScreen extends StatelessWidget {
  RegistrationPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgShapes,
                      height: 133.v,
                      width: 175.h,
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(height: 72.v),
                    Text(
                      "Welcome Onboard !",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 10.v),
                    Text(
                      "Lets help you to get into the app",
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 71.v),
                    _buildFullName(context),
                    SizedBox(height: 24.v),
                    _buildEmail(context),
                    SizedBox(height: 24.v),
                    _buildPassword(context),
                    SizedBox(height: 24.v),
                    _buildConfirmpassword(context),
                    SizedBox(height: 43.v),
                    _buildRegister(context),
                    SizedBox(height: 8.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 75.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Already have an account ?    ",
                                style: CustomTextStyles.bodySmallff000000,
                              ),
                              TextSpan(
                                text: "Sign In",
                                style: theme.textTheme.labelLarge,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 30.h,
      ),
      child: CustomTextFormField(
        controller: fullNameController,
        hintText: "Enter your Full Name",
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 30.h,
      ),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "Enter your Email Id",
        textInputType: TextInputType.emailAddress,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 30.h,
      ),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "Enter Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 30.h,
      ),
      child: CustomTextFormField(
        controller: confirmpasswordController,
        hintText: "Confirm Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomElevatedButton(
      text: "   Register",
      margin: EdgeInsets.symmetric(horizontal: 25.h),
    );
  }
}
