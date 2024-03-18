import 'package:facial_paralysis/widgets/custom_text_form_field.dart';
import 'package:facial_paralysis/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:facial_paralysis/core/app_export.dart';

class SignInPageScreen extends StatelessWidget {
  SignInPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

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
                      height: 134.v,
                      width: 175.h,
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      "Welcome Back !",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 49.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgUndrawTeamUpRe84ok,
                      height: 192.v,
                      width: 212.h,
                    ),
                    SizedBox(height: 41.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 25.h,
                        right: 30.h,
                      ),
                      child: CustomTextFormField(
                        controller: emailController,
                        hintText: "Enter your Email",
                        textInputType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(height: 23.v),
                    Padding(
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
                    ),
                    SizedBox(height: 43.v),
                    Text(
                      "Forget password ",
                      style: CustomTextStyles.labelLargePrimaryContainer,
                    ),
                    SizedBox(height: 22.v),
                    CustomElevatedButton(
                      text: "    Login",
                      margin: EdgeInsets.symmetric(horizontal: 25.h),
                    ),
                    SizedBox(height: 8.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don’t have an account ?   ",
                            style: CustomTextStyles.bodySmallff000000,
                          ),
                          TextSpan(
                            text: "Sign Up",
                            style: theme.textTheme.labelLarge,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
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
}
